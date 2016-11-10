#!/bin/bash
##SBATCH --mail-user=zq4@nyu.edu
#SBATCH --mail-type=ALL
#SBATCH --ntasks=1
#SBATCH --time=2:00:00
#SBATCH --mem=10M
#SBATCH --array=1-12   # go from 1 to the number of files in your data/ directory
#SBATCH --output=job_array.out   #python_array_job_slurm_%a.out
#arrayfile=`ls data/ | awk -v line=$SLURM_ARRAY_TASK_ID '{if (NR == line) print $0}'`


echo "SLURM_JOBID: " $SLURM_JOBID
echo "SLURM_ARRAY_TASK_ID: " $SLURM_ARRAY_TASK_ID
echo "SLURM_ARRAY_JOB_ID: " $SLURM_ARRAY_JOB_ID

DCOL=(A  B  C)
DROW=(1 2 3 4)

arrno=$SLURM_ARRAY_TASK_ID
stringline="'protram - " ${DCOL[$arrno/4]}   ${DROW[$arrno%4-1]} "\" \" segpar_mode MATCLUSTER fr2 4 segType 0'"
echo $stringline
echo "---"
arrayfile=`ls data/ | awk -v line=$SLURM_ARRAY_TASK_ID '{if (NR == line) print $0}'`
module purge
module load python/gnu/2.7.10
python < data/$arrayfile
