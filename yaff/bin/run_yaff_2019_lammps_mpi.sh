#!/bin/bash
ml purge
ml yaff/1.6.0-intel-2019b-Python-3.7.4
ml LAMMPS/patch_20Nov2019-intel-2019b
ml PLUMED/2.5.3-intel-2019b-Python-3.7.4

python table_script.py > table.log
mpirun -np $1 python yscript.py > yaff.log
