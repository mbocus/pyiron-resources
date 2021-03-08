#!/bin/bash
ml purge
module use $VSC_DATA_VO/ebqc/modules
module load Q-Chem/5.3.2-MPI
export QCSCRATCH=.
qchem job.in job.out
