# NEMD

### Description

What does this code do
* NEMD simulations

### Install and run instructions on BigRed2

* First, git clone the project.
* Go to the root director: ```cd /nemd```
* Submit a job: ```make submit S=1e7 F=1000```
* All outputs from the simulation will be stored in the outputs and data folder when the simulation is completed.
* If you want to clean everything and create a new build, use: ```make clean```

### Install and run instructions on Local

* First, git clone the project.
* Load necessary modules: ```module load gsl && module load mpi/openmpi-x86_64 && module load lammps```
* Also make sure to export OMP_NUM_THREADS environment variable with maximum threads available in your CPU: ```export OMP_NUM_THREADS=16```
* Run the simulation: ```make local-run-serial LAMMPS_EXE=lmp_g++```
* Run the simulation in parellel mode: ```make local-run-parallel LAMMPS_EXE=lmp_g++ MPI_EXE=mpirun NODESIZE=4```
* To change the default parameters; ```make local-run-parallel S=1e7 F=1000```
* All outputs from the simulation will be stored in the outputs and data folder when the simulation is completed.
* If you want to clean everything and create a new build, use: ```make clean```
* If you want to clean data, use: ```make dataclean```

