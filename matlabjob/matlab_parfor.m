% start the matlabpool with maximum available workers
% control how many workers by setting ntasks in your sbatch script
pc = parcluster('local')
matlabpool(pc, getenv('SLURM_CPUS_ON_NODE'))

% run a parfor loop, distributing the iterations to the 12 workers
parfor i = 1:100

        ones(10,10)

end
