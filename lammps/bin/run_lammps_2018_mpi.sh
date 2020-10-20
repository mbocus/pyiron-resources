#!/bin/bash
ml purge
ml load LAMMPS/patch_20Nov2019-intel-2019b
mpiexec -n $1 lmp_intel_cpu_intelmpi -in control.inp;
