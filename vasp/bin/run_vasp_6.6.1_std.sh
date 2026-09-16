#!/bin/bash
ulimit -s unlimited
ml purge
ml VASP/6.6.1-foss-2025b-mkl-hybrid
exec vasp_std
