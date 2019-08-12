#!/bin/bash
ml load VASP/5.4.4-intel-2018a-mt-20180516
mpiexec -n $1 vasp
