#!/bin/bash
#SBATCH --mail-user=
#SBATCH --mail-type=ALL
#SBATCH --nodes=1
#SBATCH --tasks-per-node=8     # 8 MPI processes per node
#SBATCH --time=01:00:00
#SBATCH --mem=100M     # 4 GB RAM per node
#SBATCH --output=mpi_job_slurm.log

echo $SLURM_JOB_NODELIST
srun --mpi=pmi2 ./mpi_exec  # srun is SLURM's version of mpirun/mpiexec
date
