<!---#9-n-octyldocosane
2020.12.02: this is the molecule to probe next. It is C30H62 and an isomer of squalane. Has diff architecture so gives the challenge for dim red methods. Generation will occur first in 313K and 0.1MPa. Moore JCP with Cummings is a good paper to start.
# nonadecane
Simulating nonadecane: generation and shear
Subtext: need to see if unsupervised ML can classify features in a complex molecular fluid--->

## Installing and running ambient sample on BigRed3
* First, git clone the project:
```git clone https://github.com/softmaterialslab/nonadecane.git```
* Then, load the required modules using following command:
```module swap PrgEnv-intel PrgEnv-gnu && module load lammps/gnu```
* Next, go to the root directory:
 ```cd nonadecane```
### Phase 01
* Then, submit the job:
    * For squalane: ```make DIR_PATH=AMB_P1 METHOD=submit M=S CLUSTER=bigred3```
    * For star molecule:  ```make DIR_PATH=AMB_P1 METHOD=submit M=T CLUSTER=bigred3```
* If you want to clean the project:
 ```make clean DIR_PATH=AMB_P1```
### Phase 02
* You must have restart file from phase1 to run the phase2
* Then, submit the job:
    * For squalane: ```make DIR_PATH=AMB_P2 METHOD=submit M=S CLUSTER=bigred3```
    * For star molecule:  ```make DIR_PATH=AMB_P2 METHOD=submit M=T CLUSTER=bigred3```
* If you want to clean the project:
 ```make clean DIR_PATH=AMB_P2```
 
### High pressure sample generation
* You must have restart file from 0.1MPa-phase2 to run the 100MPa
* Then, submit the job:
    * For squalane 100MPa: ```make DIR_PATH=HP METHOD=submit CLUSTER=bigred3 M=S T=sql P=100 E=0.1 R=0.81843211 O=0.867```
    * For squalane 300MPa: ```make DIR_PATH=HP METHOD=submit CLUSTER=bigred3 M=S T=sql P=300 E=100 R=0.86715711 O=0.923```
* If you want to clean the project:
 ```make clean DIR_PATH=HP```

### Shearing
* You must have restart file from phase2 to start the shearing process
* Select F and S to change below to what is needed. Then, submit the job:
    * For squalane: ```make DIR_PATH=SHEAR METHOD=submit M=S P =0.1 S=1e10 F=1000 CLUSTER=bigred3```
    * For star molecule:  ```make DIR_PATH=SHEAR METHOD=submit M=T P =0.1 S=1e10 F=1000 CLUSTER=bigred3```
* If you want to clean the project:
 ```make clean DIR_PATH=SHEAR```

## Installing and running ambient sample on local computer
* For running different phases of the program: please check bigred3 commands and change local make commands accordingly.
* First, git clone the project:
```git clone https://github.com/softmaterialslab/nonadecane.git```
* Then, makesure you have either parellel LAMMPS or sequatial LAMMPS available in your environment.
* Next, findout what is your mpirun exe and lammps exe and use it appropriately in the following instructions.
### Running parallel lammps
* Then, run using following commands: Here my mpi exe was *mpirun* and LAMMPS exe was *lmp_daily*
    * For squalane:  ```make DIR_PATH=AMB_P1 METHOD=local-run-parallel M=S NODESIZE=4 MPI_EXE=mpirun LAMMPS_EXE=lmp_daily```
    * For star molecule: ```make DIR_PATH=AMB_P1 METHOD=local-run-parallel M=T NODESIZE=4 MPI_EXE=mpirun LAMMPS_EXE=lmp_daily```
### Running serial lammps
* Then, run using following commands: Here my mpi exe was *mpirun* and LAMMPS exe was *lmp_daily*
    * For squalane:  ```make DIR_PATH=AMB_P1 METHOD=local-run-serial M=S LAMMPS_EXE=lmp_daily```
    * For star molecule: ```make DIR_PATH=AMB_P1 METHOD=local-run-serial M=T LAMMPS_EXE=lmp_daily```
* If you want to clean the project:
 ```make clean DIR_PATH=AMB_P1```

