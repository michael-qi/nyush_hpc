# Using conda to create a virtuan environment
## load conda environment
```bash
module load miniconda
```
Load in conda environment with the command "module load". In cluster, we use module to manage all the application's environment. After run the command in bash shell, the miniconda's environment will be added into you shell environment. Then you can use conda to create your python environment. 

Here is an example. In this example, it created an environment of python 2.7 and install the tensorflow 1.14. 
Step 1. Create an virtual environment whose name is "mytensor1.14", the version of python is 2.7.
```bash
$ conda create -n mytensor1.14 python=2.7 -y
Collecting package metadata (current_repodata.json): done
Solving environment: failed with repodata from current_repodata.json, will retry with next repodata source.
Collecting package metadata (repodata.json): done
Solving environment: done

## Package Plan ##

  environment location: /gpfsnyu/home/zq4/.conda/envs/mytensor1.14

  added / updated specs:
    - python=2.7


The following packages will be downloaded:

    package                    |            build
    ---------------------------|-----------------
    pip-19.3.1                 |           py27_0         1.7 MB
    python-2.7.18              |       h15b4118_1         9.9 MB
    setuptools-44.0.0          |           py27_0         512 KB
    wheel-0.36.2               |     pyhd3eb1b0_0          33 KB
    ------------------------------------------------------------
                                           Total:        12.1 MB

The following NEW packages will be INSTALLED:

  _libgcc_mutex      pkgs/main/linux-64::_libgcc_mutex-0.1-main
  ca-certificates    pkgs/main/linux-64::ca-certificates-2021.4.13-h06a4308_1
  certifi            pkgs/main/noarch::certifi-2020.6.20-pyhd3eb1b0_3
  libffi             pkgs/main/linux-64::libffi-3.3-he6710b0_2
  libgcc-ng          pkgs/main/linux-64::libgcc-ng-9.1.0-hdf63c60_0
  libstdcxx-ng       pkgs/main/linux-64::libstdcxx-ng-9.1.0-hdf63c60_0
  ncurses            pkgs/main/linux-64::ncurses-6.2-he6710b0_1
  pip                pkgs/main/linux-64::pip-19.3.1-py27_0
  python             pkgs/main/linux-64::python-2.7.18-h15b4118_1
  readline           pkgs/main/linux-64::readline-8.1-h27cfd23_0
  setuptools         pkgs/main/linux-64::setuptools-44.0.0-py27_0
  sqlite             pkgs/main/linux-64::sqlite-3.35.4-hdfb4753_0
  tk                 pkgs/main/linux-64::tk-8.6.10-hbc83047_0
  wheel              pkgs/main/noarch::wheel-0.36.2-pyhd3eb1b0_0
  zlib               pkgs/main/linux-64::zlib-1.2.11-h7b6447c_3



Downloading and Extracting Packages
pip-19.3.1           | 1.7 MB    | ########################################################################################################### | 100% 
wheel-0.36.2         | 33 KB     | ########################################################################################################### | 100% 
setuptools-44.0.0    | 512 KB    | ########################################################################################################### | 100% 
python-2.7.18        | 9.9 MB    | ########################################################################################################### | 100% 
Preparing transaction: done
Verifying transaction: done
Executing transaction: done
#
# To activate this environment, use
#
#     $ conda activate mytensor1.14
#
# To deactivate an active environment, use
#
#     $ conda deactivate
```
$ conda activate mytensor1.14 # not suggested


```bash
CommandNotFoundError: Your shell has not been properly configured to use 'conda activate'.
To initialize your shell, run

    $ conda init <SHELL_NAME>

Currently supported shells are:
  - bash
  - fish
  - tcsh
  - xonsh
  - zsh
  - powershell

See 'conda init --help' for more information and options.

IMPORTANT: You may need to close and restart your shell after running 'conda init'.

```
The command "conda init bash" will add some lines in your .bashrc which will configure the conda for you. Each time login the bash, the environment will be added. 

Step 2. Activate the environment.

The command "source activate mytensor1.14" will activate the environment for you.
```bash
$ source activate mytensor1.14
```
After activate the environment, the name "mytensor1.14" will be in front of "$". "conda list" will show which packages are already installed. And conda install can install the packages. 
```bash
(mytensor1.14) $ conda list
# packages in environment at /gpfsnyu/home/zq4/.conda/envs/mytensor1.14:
#
# Name                    Version                   Build  Channel
_libgcc_mutex             0.1                        main  
ca-certificates           2021.4.13            h06a4308_1  
certifi                   2020.6.20          pyhd3eb1b0_3  
libffi                    3.3                  he6710b0_2  
libgcc-ng                 9.1.0                hdf63c60_0  
libstdcxx-ng              9.1.0                hdf63c60_0  
ncurses                   6.2                  he6710b0_1  
pip                       19.3.1                   py27_0  
python                    2.7.18               h15b4118_1  
readline                  8.1                  h27cfd23_0  
setuptools                44.0.0                   py27_0  
sqlite                    3.35.4               hdfb4753_0  
tk                        8.6.10               hbc83047_0  
wheel                     0.36.2             pyhd3eb1b0_0  
zlib                      1.2.11               h7b6447c_3  

```
Step 3. Install Tensorflow 1.14 GPU supported version.
```bash
(mytensor1.14) $ conda install tensorflow-gpu==1.14.0
Collecting package metadata (current_repodata.json): done
Solving environment: failed with initial frozen solve. Retrying with flexible solve.
Collecting package metadata (repodata.json): done
Solving environment: done

## Package Plan ##

  environment location: /gpfsnyu/home/zq4/.conda/envs/mytensor1.14

  added / updated specs:
    - tensorflow-gpu==1.14.0


The following packages will be downloaded:

    package                    |            build
    ---------------------------|-----------------
    _tflow_select-2.1.0        |              gpu           2 KB
    absl-py-0.11.0             |     pyhd3eb1b0_1         103 KB
    astor-0.8.0                |           py27_0          46 KB
    backports-1.0              |     pyhd3eb1b0_2         210 KB
    backports.weakref-1.0.post1|             py_1           8 KB
    blas-1.0                   |              mkl           6 KB
    c-ares-1.17.1              |       h27cfd23_0         108 KB
    cudatoolkit-10.1.243       |       h6bb024c_0       347.4 MB
    cudnn-7.6.5                |       cuda10.1_0       179.9 MB
    cupti-10.1.168             |                0         1.4 MB
    enum34-1.1.6               |           py27_1          58 KB
    funcsigs-1.0.2             |           py27_0          22 KB
    future-0.18.2              |           py27_0         650 KB
    futures-3.3.0              |           py27_0          29 KB
    gast-0.4.0                 |             py_0          15 KB
    google-pasta-0.2.0         |             py_0          46 KB
    grpcio-1.27.2              |   py27hf8bcb03_0         1.2 MB
    h5py-2.9.0                 |   py27h7918eee_0         961 KB
    hdf5-1.10.4                |       hb1b8bf9_0         3.9 MB
    intel-openmp-2021.2.0      |     h06a4308_610         1.3 MB
    keras-applications-1.0.8   |             py_1          29 KB
    keras-preprocessing-1.1.0  |             py_1          37 KB
    libgfortran-ng-7.3.0       |       hdf63c60_0        1006 KB
    libprotobuf-3.11.2         |       hd408876_0         2.9 MB
    linecache2-1.0.0           |             py_1          14 KB
    markdown-3.1.1             |           py27_0         117 KB
    mkl-2020.2                 |              256       138.3 MB
    mkl-service-2.3.0          |   py27he904b0f_0         217 KB
    mkl_fft-1.0.15             |   py27ha843d7b_0         146 KB
    mkl_random-1.1.0           |   py27hd6b4f25_0         297 KB
    mock-3.0.5                 |           py27_0          49 KB
    numpy-1.16.6               |   py27hbc911f0_0          48 KB
    numpy-base-1.16.6          |   py27hde5b4d6_0         3.5 MB
    protobuf-3.11.2            |   py27he6710b0_0         638 KB
    scipy-1.2.1                |   py27h7c811a0_0        13.7 MB
    six-1.15.0                 |     pyhd3eb1b0_0          13 KB
    tensorboard-1.14.0         |   py27hf484d3e_0         3.1 MB
    tensorflow-1.14.0          |gpu_py27h39f1c70_0           4 KB
    tensorflow-base-1.14.0     |gpu_py27he45bfe2_0       146.3 MB
    tensorflow-estimator-1.14.0|             py_0         261 KB
    tensorflow-gpu-1.14.0      |       h0d30ee6_0           3 KB
    termcolor-1.1.0            |           py27_1           8 KB
    traceback2-1.4.0           |           py27_0          31 KB
    unittest2-1.1.0            |           py27_0         149 KB
    werkzeug-1.0.1             |     pyhd3eb1b0_0         239 KB
    wrapt-1.11.2               |   py27h7b6447c_0          48 KB
    ------------------------------------------------------------
                                           Total:       848.5 MB

The following NEW packages will be INSTALLED:

  _tflow_select      pkgs/main/linux-64::_tflow_select-2.1.0-gpu
  absl-py            pkgs/main/noarch::absl-py-0.11.0-pyhd3eb1b0_1
  astor              pkgs/main/linux-64::astor-0.8.0-py27_0
  backports          pkgs/main/noarch::backports-1.0-pyhd3eb1b0_2
  backports.weakref  pkgs/main/noarch::backports.weakref-1.0.post1-py_1
  blas               pkgs/main/linux-64::blas-1.0-mkl
  c-ares             pkgs/main/linux-64::c-ares-1.17.1-h27cfd23_0
  cudatoolkit        pkgs/main/linux-64::cudatoolkit-10.1.243-h6bb024c_0
  cudnn              pkgs/main/linux-64::cudnn-7.6.5-cuda10.1_0
  cupti              pkgs/main/linux-64::cupti-10.1.168-0
  enum34             pkgs/main/linux-64::enum34-1.1.6-py27_1
  funcsigs           pkgs/main/linux-64::funcsigs-1.0.2-py27_0
  future             pkgs/main/linux-64::future-0.18.2-py27_0
  futures            pkgs/main/linux-64::futures-3.3.0-py27_0
  gast               pkgs/main/noarch::gast-0.4.0-py_0
  google-pasta       pkgs/main/noarch::google-pasta-0.2.0-py_0
  grpcio             pkgs/main/linux-64::grpcio-1.27.2-py27hf8bcb03_0
  h5py               pkgs/main/linux-64::h5py-2.9.0-py27h7918eee_0
  hdf5               pkgs/main/linux-64::hdf5-1.10.4-hb1b8bf9_0
  intel-openmp       pkgs/main/linux-64::intel-openmp-2021.2.0-h06a4308_610
  keras-applications pkgs/main/noarch::keras-applications-1.0.8-py_1
  keras-preprocessi~ pkgs/main/noarch::keras-preprocessing-1.1.0-py_1
  libgfortran-ng     pkgs/main/linux-64::libgfortran-ng-7.3.0-hdf63c60_0
  libprotobuf        pkgs/main/linux-64::libprotobuf-3.11.2-hd408876_0
  linecache2         pkgs/main/noarch::linecache2-1.0.0-py_1
  markdown           pkgs/main/linux-64::markdown-3.1.1-py27_0
  mkl                pkgs/main/linux-64::mkl-2020.2-256
  mkl-service        pkgs/main/linux-64::mkl-service-2.3.0-py27he904b0f_0
  mkl_fft            pkgs/main/linux-64::mkl_fft-1.0.15-py27ha843d7b_0
  mkl_random         pkgs/main/linux-64::mkl_random-1.1.0-py27hd6b4f25_0
  mock               pkgs/main/linux-64::mock-3.0.5-py27_0
  numpy              pkgs/main/linux-64::numpy-1.16.6-py27hbc911f0_0
  numpy-base         pkgs/main/linux-64::numpy-base-1.16.6-py27hde5b4d6_0
  openssl            pkgs/main/linux-64::openssl-1.1.1k-h27cfd23_0
  protobuf           pkgs/main/linux-64::protobuf-3.11.2-py27he6710b0_0
  scipy              pkgs/main/linux-64::scipy-1.2.1-py27h7c811a0_0
  six                pkgs/main/noarch::six-1.15.0-pyhd3eb1b0_0
  tensorboard        pkgs/main/linux-64::tensorboard-1.14.0-py27hf484d3e_0
  tensorflow         pkgs/main/linux-64::tensorflow-1.14.0-gpu_py27h39f1c70_0
  tensorflow-base    pkgs/main/linux-64::tensorflow-base-1.14.0-gpu_py27he45bfe2_0
  tensorflow-estima~ pkgs/main/noarch::tensorflow-estimator-1.14.0-py_0
  tensorflow-gpu     pkgs/main/linux-64::tensorflow-gpu-1.14.0-h0d30ee6_0
  termcolor          pkgs/main/linux-64::termcolor-1.1.0-py27_1
  traceback2         pkgs/main/linux-64::traceback2-1.4.0-py27_0
  unittest2          pkgs/main/linux-64::unittest2-1.1.0-py27_0
  werkzeug           pkgs/main/noarch::werkzeug-1.0.1-pyhd3eb1b0_0
  wrapt              pkgs/main/linux-64::wrapt-1.11.2-py27h7b6447c_0


Proceed ([y]/n)? y


Downloading and Extracting Packages
keras-preprocessing- | 37 KB     | ########################################################################################################### | 100% 
future-0.18.2        | 650 KB    | ########################################################################################################### | 100% 
_tflow_select-2.1.0  | 2 KB      | ########################################################################################################### | 100% 
cudnn-7.6.5          | 179.9 MB  | ########################################################################################################### | 100% 
hdf5-1.10.4          | 3.9 MB    | ########################################################################################################### | 100% 
cudatoolkit-10.1.243 | 347.4 MB  | ########################################################################################################### | 100% 
funcsigs-1.0.2       | 22 KB     | ########################################################################################################### | 100% 
numpy-1.16.6         | 48 KB     | ########################################################################################################### | 100% 
grpcio-1.27.2        | 1.2 MB    | ########################################################################################################### | 100% 
protobuf-3.11.2      | 638 KB    | ########################################################################################################### | 100% 
google-pasta-0.2.0   | 46 KB     | ########################################################################################################### | 100% 
libprotobuf-3.11.2   | 2.9 MB    | ########################################################################################################### | 100% 
enum34-1.1.6         | 58 KB     | ########################################################################################################### | 100% 
h5py-2.9.0           | 961 KB    | ########################################################################################################### | 100% 
cupti-10.1.168       | 1.4 MB    | ########################################################################################################### | 100% 
c-ares-1.17.1        | 108 KB    | ########################################################################################################### | 100% 
astor-0.8.0          | 46 KB     | ########################################################################################################### | 100% 
tensorflow-base-1.14 | 146.3 MB  | ########################################################################################################### | 100% 
libgfortran-ng-7.3.0 | 1006 KB   | ########################################################################################################### | 100% 
tensorboard-1.14.0   | 3.1 MB    | ########################################################################################################### | 100% 
intel-openmp-2021.2. | 1.3 MB    | ########################################################################################################### | 100% 
tensorflow-gpu-1.14. | 3 KB      | ########################################################################################################### | 100% 
werkzeug-1.0.1       | 239 KB    | ########################################################################################################### | 100% 
backports-1.0        | 210 KB    | ########################################################################################################### | 100% 
mkl-2020.2           | 138.3 MB  | ########################################################################################################### | 100% 
mkl_random-1.1.0     | 297 KB    | ########################################################################################################### | 100% 
futures-3.3.0        | 29 KB     | ########################################################################################################### | 100% 
blas-1.0             | 6 KB      | ########################################################################################################### | 100% 
six-1.15.0           | 13 KB     | ########################################################################################################### | 100% 
scipy-1.2.1          | 13.7 MB   | ########################################################################################################### | 100% 
tensorflow-1.14.0    | 4 KB      | ########################################################################################################### | 100% 
markdown-3.1.1       | 117 KB    | ########################################################################################################### | 100% 
numpy-base-1.16.6    | 3.5 MB    | ########################################################################################################### | 100% 
mock-3.0.5           | 49 KB     | ########################################################################################################### | 100% 
backports.weakref-1. | 8 KB      | ########################################################################################################### | 100% 
traceback2-1.4.0     | 31 KB     | ########################################################################################################### | 100% 
unittest2-1.1.0      | 149 KB    | ########################################################################################################### | 100% 
keras-applications-1 | 29 KB     | ########################################################################################################### | 100% 
mkl-service-2.3.0    | 217 KB    | ########################################################################################################### | 100% 
mkl_fft-1.0.15       | 146 KB    | ########################################################################################################### | 100% 
termcolor-1.1.0      | 8 KB      | ########################################################################################################### | 100% 
linecache2-1.0.0     | 14 KB     | ########################################################################################################### | 100% 
wrapt-1.11.2         | 48 KB     | ########################################################################################################### | 100% 
tensorflow-estimator | 261 KB    | ########################################################################################################### | 100% 
absl-py-0.11.0       | 103 KB    | ########################################################################################################### | 100% 
gast-0.4.0           | 15 KB     | ########################################################################################################### | 100% 
Preparing transaction: done
Verifying transaction: done
Executing transaction: done

(mytensor1.14) $ which pip
~/.conda/envs/mytensor1.14/bin/pip
(mytensor1.14) $ pip install tf_slim
DEPRECATION: Python 2.7 will reach the end of its life on January 1st, 2020. Please upgrade your Python as Python 2.7 won't be maintained after that date. A future version of pip will drop support for Python 2.7. More details about Python 2 support in pip, can be found at https://pip.pypa.io/en/latest/development/release-process/#python-2-support
Collecting tf_slim
  Downloading https://files.pythonhosted.org/packages/02/97/b0f4a64df018ca018cc035d44f2ef08f91e2e8aa67271f6f19633a015ff7/tf_slim-1.1.0-py2.py3-none-any.whl (352kB)
     |################################| 358kB 2.2MB/s 
Requirement already satisfied: absl-py>=0.2.2 in /gpfsnyu/scratch/zq4/conda/envs/mytensor1.14/lib/python2.7/site-packages (from tf_slim) (0.11.0)
Requirement already satisfied: enum34; python_version < "3.4" in /gpfsnyu/scratch/zq4/conda/envs/mytensor1.14/lib/python2.7/site-packages (from absl-py>=0.2.2->tf_slim) (1.1.6)
Requirement already satisfied: six in /gpfsnyu/scratch/zq4/conda/envs/mytensor1.14/lib/python2.7/site-packages (from absl-py>=0.2.2->tf_slim) (1.15.0)
Installing collected packages: tf-slim
Successfully installed tf-slim-1.1.0
(mytensor1.14) $ python
Python 2.7.18 |Anaconda, Inc.| (default, Apr 23 2020, 22:42:48) 
[GCC 7.3.0] on linux2
Type "help", "copyright", "credits" or "license" for more information.
>>> import tf_slim
>>> exit()
(mytensor1.14) $ source deactivate mytensor1.14
DeprecationWarning: 'source deactivate' is deprecated. Use 'conda deactivate'.
```
# Other conda commands
## List the created virtual environments
```bash
conda env list
conda info -e
```
## Deactivate the virtual environment.
```bash
conda deactivate
source deactivate mytensor1.14
```
### delete the virtual environment
```bash
conda remove -n mytensor1.14 --all
```