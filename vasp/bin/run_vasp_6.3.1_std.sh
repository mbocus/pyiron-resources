#!/bin/bash
ulimit -s unlimited
ml purge
ml VASP/6.3.1-gomkl-2021a
exec vasp_std
