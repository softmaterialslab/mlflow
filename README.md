# nonadecane

Simulating nonadecane: generation and shear

Subtext: need to see if unsupervised ML can classify features in a complex molecular fluid

## Install and run instructions on BigRed3
* First, git clone the project:
```git clone https://github.com/softmaterialslab/nonadecane.git```
* Then, load the required modules using following command:
```module swap PrgEnv-intel PrgEnv-gnu && module load lammps/gnu```
* Next, go to the root directory:
 ```cd nonadecane```
* Then, submit the job:
 * For squalane: ```make DIR_PATH=AMB_P1 METHOD=submit M=S CLUSTER=bigred3```
 * For star molecule:  ```make DIR_PATH=AMB_P1 METHOD=submit M=T CLUSTER=bigred3```

## Install and run instructions on local computer
* First, git clone the project:
```git clone https://github.com/softmaterialslab/nonadecane.git```
* Then, makesure you have either parellel LAMMPS or sequatial LAMMPS available in your environment.

