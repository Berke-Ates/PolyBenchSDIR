import sys
import datetime
import numpy as np
import dace
from dace import SDFG
from opt import opt

name = "adi"


def refKernel(TSTEPS, N, u):

    v = np.empty(u.shape, dtype=u.dtype)
    p = np.empty(u.shape, dtype=u.dtype)
    q = np.empty(u.shape, dtype=u.dtype)

    DX = 1.0 / N
    DY = 1.0 / N
    DT = 1.0 / TSTEPS
    B1 = 2.0
    B2 = 1.0
    mul1 = B1 * DT / (DX * DX)
    mul2 = B2 * DT / (DY * DY)

    a = -mul1 / 2.0
    b = 1.0 + mul2
    c = a
    d = -mul2 / 2.0
    e = 1.0 + mul2
    f = d

    for t in range(1, TSTEPS + 1):
        v[0, 1:N - 1] = 1.0
        p[1:N - 1, 0] = 0.0
        q[1:N - 1, 0] = v[0, 1:N - 1]
        for j in range(1, N - 1):
            p[1:N - 1, j] = -c / (a * p[1:N - 1, j - 1] + b)
            q[1:N - 1,
              j] = (-d * u[j, 0:N - 2] +
                    (1.0 + 2.0 * d) * u[j, 1:N - 1] - f * u[j, 2:N] -
                    a * q[1:N - 1, j - 1]) / (a * p[1:N - 1, j - 1] + b)
        v[N - 1, 1:N - 1] = 1.0
        for j in range(N - 2, 0, -1):
            v[j, 1:N - 1] = p[1:N - 1, j] * v[j + 1, 1:N - 1] + q[1:N - 1, j]

        u[1:N - 1, 0] = 1.0
        p[1:N - 1, 0] = 0.0
        q[1:N - 1, 0] = u[1:N - 1, 0]
        for j in range(1, N - 1):
            p[1:N - 1, j] = -f / (d * p[1:N - 1, j - 1] + e)
            q[1:N - 1,
              j] = (-a * v[0:N - 2, j] +
                    (1.0 + 2.0 * a) * v[1:N - 1, j] - c * v[2:N, j] -
                    d * q[1:N - 1, j - 1]) / (d * p[1:N - 1, j - 1] + e)
        u[1:N - 1, N - 1] = 1.0
        for j in range(N - 2, 0, -1):
            u[1:N - 1, j] = p[1:N - 1, j] * u[1:N - 1, j + 1] + q[1:N - 1, j]


def initialize(N, datatype=np.float64):
    u = np.fromfunction(lambda i, j: (i + N - j) / N, (N, N), dtype=datatype)
    return u


if __name__ == '__main__':
    tsteps = 500
    n = 1000

    A = initialize(n)
    B = dace.ndarray(shape=(n, n), dtype=dace.float64)
    C = dace.ndarray(shape=(n, n), dtype=dace.float64)
    D = dace.ndarray(shape=(n, n), dtype=dace.float64)

    sdfg = SDFG.from_file(sys.argv[1] + "/gen/kernel_sdfg/" + name + ".sdfg")
    opt(sdfg)
    obj = sdfg.compile()

    ref = initialize(n)
    refKernel(tsteps, n, ref)

    for i in range(1):
        t_0 = datetime.datetime.now()
        obj(_arg0=np.int32(tsteps),
            _arg1=np.int32(n),
            _arg2=A,
            _arg3=B,
            _arg4=C,
            _arg5=D,
            s_0=n,
            s_1=n,
            s_2=n,
            s_3=n)
        t_d = datetime.datetime.now() - t_0

        with open("logs/sdir_" + name + "_benchmark.log", "a") as logfile:
            logfile.write(str(round(t_d.total_seconds() * 1000)) + "\n")

        if (i == 0):
            print("Output is close: " + str(np.allclose(ref, A)))
        print("Done sdir " + name + " run: ", str(i))
