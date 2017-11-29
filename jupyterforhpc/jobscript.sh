#!/bin/bash
#SBATCH -p serial
#SBATCH -n1
#SBATCH -N1
#SBATCH -t 01:00:00
#SBATCH --mem=4GB
#SBATCH --job-name jupyter
#SBATCH --output jupyter-log-%J.txt

source /etc/profile.d/modules.sh
module purge
module load python/gnu/2.7.10

XDG_RUNTIME_DIR=""
ipnport=$(shuf -i8000-9999 -n1)
ipnip=$(hostname -i)

echo -e "\n"
echo    "  Paste ssh command in a terminal on local host (i.e., laptop)"
echo    "  ------------------------------------------------------------"
echo -e "  ssh -N -L $ipnport:$ipnip:$ipnport $USER@hpc.shanghai.nyu.edu\n"
echo    "  Open this address in a browser on local host; see token below"
echo    "  ------------------------------------------------------------"
echo -e "  localhost:$ipnport                                      \n\n"

ipcluster start --daemonize
jupyter-notebook --no-browser --port=$ipnport --ip=$ipnip
