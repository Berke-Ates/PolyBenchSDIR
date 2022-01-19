import sys
import datetime
import numpy as np
import dace
from dace import SDFG
from opt import opt

name = "gemver"


def reKernel(alpha, beta, A, u1, v1, u2, v2, w, x, y, z):
    A += np.outer(u1, v1) + np.outer(u2, v2)
    x += beta * y @ A + z
    w += alpha * A @ x


def init_arrays(n, alpha, beta, A, B1, B2, B3, B4, B5, B6, B7, B8):
    for i in range(n):
        B1[i] = i
        B3[i] = dace.float64((i + 1) / n) / 2.0
        B2[i] = dace.float64((i + 1) / n) / 4.0
        B4[i] = dace.float64((i + 1) / n) / 6.0
        B7[i] = dace.float64((i + 1) / n) / 8.0
        B8[i] = dace.float64((i + 1) / n) / 9.0
        B6[i] = 0.0
        B5[i] = 0.0
        for j in range(n):
            A[i, j] = dace.float64((i * j % n)) / n


if __name__ == '__main__':
    n = 2000

    alpha = 1.5
    beta = 1.2

    A = dace.ndarray(shape=(n, n), dtype=dace.float64)
    B1 = dace.ndarray(shape=(n, ), dtype=dace.float64)
    B2 = dace.ndarray(shape=(n, ), dtype=dace.float64)
    B3 = dace.ndarray(shape=(n, ), dtype=dace.float64)
    B4 = dace.ndarray(shape=(n, ), dtype=dace.float64)
    B5 = dace.ndarray(shape=(n, ), dtype=dace.float64)
    B6 = dace.ndarray(shape=(n, ), dtype=dace.float64)
    B7 = dace.ndarray(shape=(n, ), dtype=dace.float64)
    B8 = dace.ndarray(shape=(n, ), dtype=dace.float64)

    init_arrays(n, alpha, beta, A, B1, B2, B3, B4, B5, B6, B7, B8)

    sdfg = SDFG.from_file(sys.argv[1] + "/gen/kernel_sdfg/" + name + ".sdfg")
    opt(sdfg)
    obj = sdfg.compile()

    ref = dace.ndarray(shape=(n, n), dtype=dace.float64)
    B12 = dace.ndarray(shape=(n, ), dtype=dace.float64)
    B22 = dace.ndarray(shape=(n, ), dtype=dace.float64)
    B32 = dace.ndarray(shape=(n, ), dtype=dace.float64)
    B42 = dace.ndarray(shape=(n, ), dtype=dace.float64)
    B52 = dace.ndarray(shape=(n, ), dtype=dace.float64)
    B62 = dace.ndarray(shape=(n, ), dtype=dace.float64)
    B72 = dace.ndarray(shape=(n, ), dtype=dace.float64)
    B82 = dace.ndarray(shape=(n, ), dtype=dace.float64)

    init_arrays(n, alpha, beta, ref, B12, B22, B32, B42, B52, B62, B72, B82)
    reKernel(alpha, beta, ref, B12, B22, B32, B42, B52, B62, B72, B82)

    for i in range(1):
        t_0 = datetime.datetime.now()
        obj(_arg0=np.int32(n),
            _arg1=alpha,
            _arg2=beta,
            _arg3=A,
            _arg4=B1,
            _arg5=B2,
            _arg6=B3,
            _arg7=B4,
            _arg8=B5,
            _arg9=B6,
            _arg10=B7,
            _arg11=B8,
            s_0=n,
            s_1=n,
            s_2=n,
            s_3=n,
            s_4=n,
            s_5=n,
            s_6=n,
            s_7=n,
            s_8=n)
        t_d = datetime.datetime.now() - t_0

        with open("logs/sdir_" + name + "_benchmark.log", "a") as logfile:
            logfile.write(str(round(t_d.total_seconds() * 1000)) + "\n")

        if (i == 0):
            print("Output is close: " + str(np.allclose(ref, A)))
        print("Done sdir " + name + " run: ", str(i))
