#!/bin/bash
ml purge
ml load Gaussian/g16_C.01-intel-2019a
g16 input.com -p=$1 && formchk input.chk input.fchk && rm input.chk
