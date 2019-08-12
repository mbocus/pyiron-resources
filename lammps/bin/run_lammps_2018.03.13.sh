#!/bin/bash
source $VSC_DATA_VO/vsc40685_apps/activate.sh
ml load LAMMPS/patch_15May2019-intel-2018b
exec lmp -in control.inp;
