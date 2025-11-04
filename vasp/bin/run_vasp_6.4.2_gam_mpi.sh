#!/bin/bash
ulimit -s unlimited
ml purge
ml VASP/6.4.2-gomkl-2023a-VASPsol-20210413-vtst-197-Wannier90-3.1.0
mpiexec -n $1 vasp_gam
