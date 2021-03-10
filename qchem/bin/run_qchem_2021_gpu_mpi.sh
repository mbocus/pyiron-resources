#!/bin/bash
ml purge
module use $VSC_DATA_VO/ebqc/modules
module load Q-Chem/5.3.2-GPU
export BRIANQC_INSTALL_PATH=/data/gent/vo/000/gvo00003/ebqc/software/Q-Chem/5.3.2-GPU/brianqc_qchem
export QCSCRATCH=.
qchem -nt $1 -gpu job.in job.out
