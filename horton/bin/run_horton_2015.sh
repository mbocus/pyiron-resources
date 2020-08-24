#!/bin/bash
ml purge
ml horton/2.0.0-intel-2015b-Python-2.7.10-HDF5-1.8.15-patch1-serial
horton-wpart.py --grid veryfine input.fchk horton_out.h5 mbis > horton.log

ml purge
ml QuickFF/2.2.4-intel-2019a-Python-3.7.2
python qff_input_ei.py
