
The job script will submit a jupyter notebook on the compute node. After submit this job with "sbatch", to connect the jupyter server please follow this steps:

1. Copy/paste this in your local terminal to ssh tunnel with remote
----------------------------------------------------------------
ssh -N -L 8193:10.214.***.***:8193 NetID@hpc.shanghai.nyu.edu
---------------------------------------------------------------

2. Then open a browser on your local machine to the following address
------------------------------------------------------------------
localhost:8193  (prefix w/ https:// if using password)

please check the generated log file "jupyter-log-****.txt" for more detail information.


