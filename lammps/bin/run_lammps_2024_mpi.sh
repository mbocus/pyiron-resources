#!/bin/bash
ml purge
ml LAMMPS/29Aug2024-foss-2023b-kokkos
mpiexec -np $1 lmp -kokkos on t 2 -sf kk -in control.inp;
