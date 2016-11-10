#!/bin/bash
#SBATCH --mail-user=
#SBATCH --mail-type=ALL
#SBATCH --ntasks=1
#SBATCH --time=1:00:00
#SBATCH --mem=100M
#SBATCH --array=0-2
##SBATCH --output=python_array_job_slurm_%A_%a.out #if you need each subjob to generate an output file.
#SBATCH --output=python_array_job_slurm.out
echo "SLURM_JOBID: " $SLURM_JOBID
echo "SLURM_ARRAY_TASK_ID: " $SLURM_ARRAY_TASK_ID
echo "SLURM_ARRAY_JOB_ID: " $SLURM_ARRAY_JOB_ID

module load python/intel/2.7.10

python < vectorization_${SLURM_ARRAY_TASK_ID}.py
