#!/bin/bash
ulimit -s unlimited
ml purge
ml VASP/6.6.1-foss-2025b-mkl-hybrid
mpiexec -n $1 vasp_std
