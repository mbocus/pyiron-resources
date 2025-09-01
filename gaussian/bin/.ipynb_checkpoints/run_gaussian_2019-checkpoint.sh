#!/bin/bash
ml purge
ml load Gaussian/g16_C.02-NVHPC-24.9
g16 input.com && formchk input.chk input.fchk
