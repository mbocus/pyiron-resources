#!/bin/bash
ml purge
ml LAMMPS/29Aug2024-foss-2023b-kokkos
mpiexec -n $1 lmp -in control.inp;
