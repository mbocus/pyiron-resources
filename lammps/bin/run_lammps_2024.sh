#!/bin/bash
ml purge
ml LAMMPS/29Aug2024-foss-2023b-kokkos
exec lmp -in control.inp;
