#!/bin/bash
ml purge
ml LAMMPS/3Mar2020-intel-2020a-Python-3.8.2-kokkos
exec lmp -in control.inp;
