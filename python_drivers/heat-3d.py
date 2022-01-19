import sys
import datetime
import numpy as np
import dace
from dace import SDFG
from opt import opt

name = "heat-3d"


def refKernel(TSTEPS, A, B):
    for t in range(1, TSTEPS):
        B[1:-1, 1:-1,
          1:-1] = (0.125 * (A[2:, 1:-1, 1:-1] - 2.0 * A[1:-1, 1:-1, 1:-1] +
                            A[:-2, 1:-1, 1:-1]) + 0.125 *
                   (A[1:-1, 2:, 1:-1] - 2.0 * A[1:-1, 1:-1, 1:-1] +
                    A[1:-1, :-2, 1:-1]) + 0.125 *
                   (A[1:-1, 1:-1, 2:] - 2.0 * A[1:-1, 1:-1, 1:-1] +
                    A[1:-1, 1:-1, 0:-2]) + A[1:-1, 1:-1, 1:-1])
        A[1:-1, 1:-1,
          1:-1] = (0.125 * (B[2:, 1:-1, 1:-1] - 2.0 * B[1:-1, 1:-1, 1:-1] +
                            B[:-2, 1:-1, 1:-1]) + 0.125 *
                   (B[1:-1, 2:, 1:-1] - 2.0 * B[1:-1, 1:-1, 1:-1] +
                    B[1:-1, :-2, 1:-1]) + 0.125 *
                   (B[1:-1, 1:-1, 2:] - 2.0 * B[1:-1, 1:-1, 1:-1] +
                    B[1:-1, 1:-1, 0:-2]) + B[1:-1, 1:-1, 1:-1])



def initialize(N, datatype=np.float64):
    A = np.fromfunction(lambda i, j, k: (i + j + (N - k)) * 10 / N, (N, N, N),
                        dtype=datatype)
    B = np.copy(A)

    return A, B


if __name__ == '__main__':
    tsteps = 500
    n = 120

    A, B = initialize(n)

    sdfg = SDFG.from_file(sys.argv[1] + "/gen/kernel_sdfg/" + name + ".sdfg")
    opt(sdfg)
    obj = sdfg.compile()

    ref, B2 = initialize(n)
    refKernel(tsteps, ref, B2)

    for i in range(1):
        t_0 = datetime.datetime.now()
        obj(_arg0=np.int32(tsteps),
            _arg1=np.int32(n),
            _arg2=A,
            _arg3=B,
            s_0=n,
            s_1=n)
        t_d = datetime.datetime.now() - t_0

        with open("logs/sdir_" + name + "_benchmark.log", "a") as logfile:
            logfile.write(str(round(t_d.total_seconds() * 1000)) + "\n")

        if (i == 0):
            print("Output is close: " + str(np.allclose(ref, A)))
        print("Done sdir " + name + " run: ", str(i))
