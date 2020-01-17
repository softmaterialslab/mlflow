#Examples for STAR
#make DIR_PATH=AMB_P1 METHOD=local-run-parallel M=T NODESIZE=4 MPI_EXE=mpirun LAMMPS_EXE=lmp_mpi.exe
#make DIR_PATH=AMB_P1 METHOD=local-run-serial M=T LAMMPS_EXE=lmp_stable
#make DIR_PATH=AMB_P1 METHOD=submit M=T
#Examples for SQL
#make DIR_PATH=AMB_P1 METHOD=local-run-parallel M=S NODESIZE=4 MPI_EXE=mpirun LAMMPS_EXE=lmp_mpi.exe
#make DIR_PATH=AMB_P1 METHOD=local-run-serial M=S LAMMPS_EXE=lmp_stable
#make DIR_PATH=AMB_P1 METHOD=submit M=S
#Cleaning
#make clean DIR_PATH=AMB_P1
#This make file builds the sub folder make files

AMB = ambient
SHEAR = shearing
DIR_PATH = AMB_P1
METHOD = submit
M=T
NODESIZE=4
MPI_EXE=mpirun
LAMMPS_EXE=lmp_mpi.exe

all:
	@echo "Starting build of the $(DIR_PATH) directory";
ifeq ($(DIR_PATH),AMB_P1)
	+$(MAKE) -C $(AMB)/phase1 $(METHOD) M=$(M) MPI_EXE=$(MPI_EXE) NODESIZE=$(NODESIZE) LAMMPS_EXE=$(LAMMPS_EXE)
else ifeq ($(DIR_PATH),AMB_P2)
	+$(MAKE) -C $(AMB)/phase2 $(METHOD) M=$(M) MPI_EXE=$(MPI_EXE) NODESIZE=$(NODESIZE) LAMMPS_EXE=$(LAMMPS_EXE)
else
	+$(MAKE) -C $(SHEAR) $(METHOD) M=$(M) MPI_EXE=$(MPI_EXE) NODESIZE=$(NODESIZE) LAMMPS_EXE=$(LAMMPS_EXE)
endif
	@echo "Ending the build of the $(DIR_PATH) directory";

clean:
	@echo "Cleaning the $(DIR_PATH) directory";
ifeq ($(DIR_PATH),AMB_P1)
	+$(MAKE) -C $(AMB)/phase1 clean
else ifeq ($(DIR_PATH),AMB_P2)
	+$(MAKE) -C $(AMB)/phase2 clean
else
	+$(MAKE) -C $(SHEAR) clean
endif
	@echo "Cleaned the $(DIR_PATH) directory";

.PHONY: all clean