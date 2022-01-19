import sys
import datetime
import numpy as np
import dace
from dace import SDFG
from opt import opt

name = "2mm"


def init_arrays(ni, nj, nk, nl, A, B, C, D):
    for i in range(ni):
        for j in range(nk):
            A[i, j] = dace.float64((i * j + 1) % ni) / ni
    for i in range(nk):
        for j in range(nj):
            B[i, j] = dace.float64(i * (j + 1) % nj) / nj
    for i in range(nj):
        for j in range(nl):
            C[i, j] = dace.float64((i * (j + 3) + 1) % nl) / nl
    for i in range(ni):
        for j in range(nl):
            D[i, j] = dace.float64(i * (j + 2) % nk) / nk


if __name__ == '__main__':
    ni = 800
    nj = 900
    nk = 1100
    nl = 1200

    alpha = 1.5
    beta = 1.2

    tmp = dace.ndarray(shape=(ni, nj), dtype=dace.float64)
    A = dace.ndarray(shape=(ni, nk), dtype=dace.float64)
    B = dace.ndarray(shape=(nk, nj), dtype=dace.float64)
    C = dace.ndarray(shape=(nj, nl), dtype=dace.float64)
    D = dace.ndarray(shape=(ni, nl), dtype=dace.float64)

    init_arrays(ni, nj, nk, nl, A, B, C, D)

    sdfg = SDFG.from_file(sys.argv[1] + "/gen/kernel_sdfg/" + name + ".sdfg")
    opt(sdfg)
    obj = sdfg.compile()

    ref = alpha * A @ B @ C + beta * D

    for i in range(1):
        t_0 = datetime.datetime.now()
        obj(_arg0=np.int32(ni),
            _arg1=np.int32(nj),
            _arg2=np.int32(nk),
            _arg3=np.int32(nl),
            _arg4=alpha,
            _arg5=beta,
            _arg6=tmp,
            _arg7=A,
            _arg8=B,
            _arg9=C,
            _arg10=D,
            s_0=ni,
            s_1=ni,
            s_2=nk,
            s_3=nj,
            s_4=ni)
        t_d = datetime.datetime.now() - t_0

        with open("logs/sdir_" + name + "_benchmark.log", "a") as logfile:
            logfile.write(str(round(t_d.total_seconds() * 1000)) + "\n")

        if (i == 0):
            print("Output is close: " + str(np.allclose(ref, D)))
        print("Done sdir " + name + " run: ", str(i))
