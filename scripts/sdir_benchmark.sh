#!/bin/bash

python $1/python_drivers/2mm.py $1
python $1/python_drivers/adi.py $1
python $1/python_drivers/gemver.py $1
python $1/python_drivers/heat-3d.py $1
python $1/python_drivers/trmm.py $1
