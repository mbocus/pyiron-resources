#!/bin/bash
ulimit -s unlimited
module purge
module load VASP/6.1.2_patched-intel-2019b
exec vasp_std
