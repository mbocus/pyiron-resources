#!/bin/bash
ml purge
ml load yaff/1.6.0-intel-2019a-Python-3.7.2
ml load PLUMED/2.5.2-intel-2019a-Python-3.7.2
python yscript.py > yaff.log

