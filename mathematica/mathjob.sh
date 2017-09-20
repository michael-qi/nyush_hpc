#!/bin/bash

#SBATCH -N 1
#SBATCH -t 01:00:00

module load mathematica/11.0.1

math -noprompt -run "<<mathExample.m"
