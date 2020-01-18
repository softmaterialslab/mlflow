# nonadecane
Simulating nonadecane: generation and shear
Subtext: need to see if unsupervised ML can classify features in a complex molecular fluid

## Installing and running ambient sample on BigRed3
* First, git clone the project:
```git clone https://github.com/softmaterialslab/nonadecane.git```
* Then, load the required modules using following command:
```module swap PrgEnv-intel PrgEnv-gnu && module load lammps/gnu```
* Next, go to the root directory:
 ```cd nonadecane```
* Then, submit the job:
    * For squalane: ```make DIR_PATH=AMB_P1 METHOD=submit M=S CLUSTER=bigred3```
    * For star molecule:  ```make DIR_PATH=AMB_P1 METHOD=submit M=T CLUSTER=bigred3```
* If you want to clean the project:
 ```make clean DIR_PATH=AMB_P1```

## Installing and running ambient sample on local computer
* First, git clone the project:
```git clone https://github.com/softmaterialslab/nonadecane.git```
* Then, makesure you have either parellel LAMMPS or sequatial LAMMPS available in your environment.
* Next, findout what is your mpirun exe and lammps exe and use it appropriately in the following instructions.
### running parallel lammps
* Then, run using following commands: Here my mpi exe was *mpirun* and LAMMPS exe was *lmp_daily*
    * For squalane:  ```make DIR_PATH=AMB_P1 METHOD=local-run-parallel M=S NODESIZE=4 MPI_EXE=mpirun LAMMPS_EXE=lmp_daily```
    * For star molecule: ```make DIR_PATH=AMB_P1 METHOD=local-run-parallel M=T NODESIZE=4 MPI_EXE=mpirun LAMMPS_EXE=lmp_daily```
### running serial lammps
* Then, run using following commands: Here my mpi exe was *mpirun* and LAMMPS exe was *lmp_daily*
    * For squalane:  ```make DIR_PATH=AMB_P1 METHOD=local-run-serial M=S LAMMPS_EXE=lmp_daily```
    * For star molecule: ```make DIR_PATH=AMB_P1 METHOD=local-run-serial M=T LAMMPS_EXE=lmp_daily```
* If you want to clean the project:
 ```make clean DIR_PATH=AMB_P1```

