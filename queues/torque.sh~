#!/bin/bash
#PBS -l nodes={{nodes}}:ppn={{cores}}
#PBS -N {{job_name}}
{%- if memory_max %}
#PBS -l mem={{memory_max}}
{%- endif %}
{%- if run_time_max %}
#PBS -l walltime={{run_time_max}}
{%- endif %}
#PBS -V	

ORIGDIR=$PBS_O_WORKDIR
WORKDIR=/local/$PBS_JOBID

{{command}}