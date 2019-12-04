#!/bin/bash
ulimit -s unlimited
ml purge
ml load VASP/5.4.4-intel-2018a-mt-20180516
exec vasp
