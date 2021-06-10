#!/bin/bash
ulimit -s unlimited
module purge
module load VASP/5.4.4-intel-2018a
exec vasp_std
