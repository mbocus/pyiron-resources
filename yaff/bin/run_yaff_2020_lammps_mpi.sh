#!/bin/bash
ml purge
ml yaff/1.6.0-intel-2020a-Python-3.8.2
ml LAMMPS/3Mar2020-intel-2020a-Python-3.8.2-kokkos
ml PLUMED/2.6.0-intel-2020a-Python-3.8.2

python table_script.py > table.log
mpirun -np $1 python yscript.py > yaff.log
