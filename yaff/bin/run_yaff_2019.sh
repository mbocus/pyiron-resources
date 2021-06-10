#!/bin/bash
module purge
module load yaff/1.6.0-intel-2019b-Python-3.7.4
module load PLUMED/2.5.3-intel-2019b-Python-3.7.4
python yscript.py > yaff.log
