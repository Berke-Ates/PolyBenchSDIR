import sys
import dace
from dace import SDFG
from dace.transformation.auto.auto_optimize import auto_optimize

try:
    sdfg = SDFG.from_file(sys.argv[1])
    sdfg.validate()
    sdfg.save(sys.argv[2])
    #sdfg = auto_optimize(sdfg, dace.DeviceType.CPU)
    sdfg.compile(sys.argv[3])
except Exception as e:
    exit(1)
