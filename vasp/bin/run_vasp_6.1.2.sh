#!/bin/bash
ulimit -s unlimited
ml purge
ml load VASP/6.1.2_patched-intel-2019b
exec vasp
