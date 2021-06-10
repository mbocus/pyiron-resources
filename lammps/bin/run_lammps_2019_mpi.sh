#!/bin/bash
ml purge
ml load LAMMPS/3Mar2020-intel-2019b-Python-3.7.4-kokkos
mpiexec -n $1 lmp_intel_cpu_intelmpi -in control.inp;
