#!/bin/bash
ml purge
ml load LAMMPS/patch_20Nov2019-intel-2019b
exec lmp -in control.inp;
