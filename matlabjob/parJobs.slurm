#!/bin/bash

#SBATCH --job-name=parfor
#SBATCH --output=nor.%j.out
#SBATCH --error=err.%j.err
#SBATCH --nodes=1
#SBATCH --ntasks=4
#SBATCH --partition=parallel
#SBATCH --time=01:00:00


source /etc/profile.d/modules.sh

module load matlab/2016a
matlab -nodisplay < matlab_parfor.m
