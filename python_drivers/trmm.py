import sys
import datetime
import numpy as np
import dace
from dace import SDFG
from opt import opt

name = "trmm"


def refKernel(alpha, A, B):
    for i in range(B.shape[0]):
        for j in range(B.shape[1]):
            B[i, j] += np.dot(A[i + 1:, i], B[i + 1:, j])
    B *= alpha


def initialize(M, N, datatype=np.float64):
    alpha = datatype(1.5)
    A = np.fromfunction(lambda i, j: ((i * j) % M) / M, (M, M), dtype=datatype)
    for i in range(M):
        A[i, i] = 1.0
    B = np.fromfunction(lambda i, j: ((N + i - j) % N) / N, (M, N),
                        dtype=datatype)

    return alpha, A, B


if __name__ == '__main__':
    m = 1000
    n = 1200

    alpha, A, B = initialize(m, n)

    sdfg = SDFG.from_file(sys.argv[1] + "/gen/kernel_sdfg/" + name + ".sdfg")
    opt(sdfg)
    obj = sdfg.compile()

    alpha2, A2, ref = initialize(m, n)
    refKernel(alpha2, A2, ref)

    for i in range(100):
        t_0 = datetime.datetime.now()
        obj(_arg0=np.int32(m),
            _arg1=np.int32(n),
            _arg2=alpha,
            _arg3=A,
            _arg4=B,
            s_0=m,
            s_1=m)
        t_d = datetime.datetime.now() - t_0

        with open("logs/sdir_" + name + "_benchmark.log", "a") as logfile:
            logfile.write(str(round(t_d.total_seconds() * 1000)) + "\n")

        if (i == 0):
            print("Output is close: " + str(np.allclose(ref, B)))
        print("Done sdir " + name + " run: ", str(i))
