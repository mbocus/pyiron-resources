#!/bin/bash
ulimit -s unlimited
ml purge
ml VASP/6.3.1-gomkl-2021a
mpiexec -n $1 vasp
