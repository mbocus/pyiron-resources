#!/bin/bash
ml load Gaussian/g16_E.01-intel-2018a
g16 input.com -y=input.chk && formchk input.chk input.fchk

