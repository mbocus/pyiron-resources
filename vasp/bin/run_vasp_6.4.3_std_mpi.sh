#!/bin/bash
ulimit -s unlimited
ml purge
ml VASP/6.4.3-gomkl-2023b-VASPsol-20210413-vtst-204
mpiexec -n $1 vasp_std
