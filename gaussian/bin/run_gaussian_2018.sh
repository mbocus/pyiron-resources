#!/bin/bash
ml purge
ml load Gaussian/g16_A.03-intel-2019a
g16 input.com && formchk input.chk input.fchk && rm input.chk
