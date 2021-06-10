#!/bin/bash
ulimit -s unlimited
ml purge
ml load VASP/5.4.4-intel-2018a
exec vasp
