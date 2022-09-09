#!/bin/bash
ml purge
ml load Gaussian/g16_C.01-intel-2019b
g16 input.com && formchk input.chk input.fchk
