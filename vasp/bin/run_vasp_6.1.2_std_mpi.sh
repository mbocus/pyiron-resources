#!/bin/bash
ulimit -s unlimited
module purge
module load VASP/6.1.2_patched-intel-2019b
mpiexec -n $1 vasp_std
