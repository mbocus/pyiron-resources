#!/bin/bash
{%- set cpn = 28 %}
{%- set nodes = ((cores-1)//cpn) + 1 %}
{%- if  cores%nodes == 0 %}
#PBS -l nodes={{nodes}}:ppn={{cores//nodes}}:broadwell
{%- else %}
#PBS -l nodes={{nodes}}:ppn={{cores//nodes + 1}}:broadwell
{%- endif %}
#PBS -N {{job_name}}
#PBS -A {{account_id}}
{%- if memory_max %}
#PBS -l mem={{memory_max}}
{%- endif %}
{%- if run_time_max %}
#PBS -l walltime={{run_time_max}}
{%- endif %}
#PBS -V

ORIGDIR=$PBS_O_WORKDIR
WORKDIR=/$VSC_SCRATCH_NODE/$PBS_JOBID

cp -r $ORIGDIR/* $WORKDIR/
cd $WORKDIR

{{ command }}

cp -r $WORKDIR/* $ORIGDIR/
