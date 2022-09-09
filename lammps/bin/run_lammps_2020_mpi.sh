#!/bin/bash
ml purge
ml LAMMPS/3Mar2020-intel-2020a-Python-3.8.2-kokkos
mpiexec -n $1 lmp_intel_cpu_intelmpi -in control.inp;
