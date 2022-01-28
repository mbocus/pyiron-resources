#!/bin/bash
ml purge
ml yaff/1.6.0-intel-2020a-Python-3.8.2
ml PLUMED/2.6.0-intel-2020a-Python-3.8.2
python yscript.py > yaff.log
