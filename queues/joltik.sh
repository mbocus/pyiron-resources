#!/bin/bash
{%- set cpn = 32 %}
{%- set gpn = 4 %}
{%- set nodes = ((cores-1)//cpn) + 1 %}
{% assert(gpus<gpn*nodes , 'Number of gpus is too large for the number of nodes you reserved.') %}
{%- if  cores%nodes == 0 %}
#SBATCH --nodes={{nodes}} --ntasks={{cores}} --ntasks-per-node={{cores//nodes}} --gres=gpu:{{gpus}} --cpus-per-gpu={{cores//gpus}}
{%- else %}
#SBATCH --nodes={{nodes}} --ntasks={{cores}} --ntasks-per-node={{cores//nodes +1}} --gres=gpu:{{gpus}} --cpus-per-gpu={{cores//gpus}}
{%- endif %}
#PBS -N {{job_name}}
{%- if memory_max %}
#PBS -l pmem={{memory_max}}
{%- endif %}
{%- if run_time_max %}
#PBS -l walltime={{run_time_max//60}}
{%- endif %}
#PBS -V


ORIGDIR=$PBS_O_WORKDIR
WORKDIR=/local/$PBS_JOBID
PBS_JOBDIR=$PBS_O_WORKDIR

{{ command }}
