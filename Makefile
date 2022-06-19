#Examples for STAR
#make DIR_PATH=AMB_SINGLE METHOD=local-run-parallel M=T T=star NODESIZE=4 MPI_EXE=mpirun LAMMPS_EXE=lmp_daily
#make DIR_PATH=AMB_SINGLE METHOD=local-run-parallel M=T T=star NODESIZE=16 MPI_EXE=mpirun LAMMPS_EXE=lmp_daily
#make DIR_PATH=AMB_SINGLE METHOD=local-run-serial M=T T=star LAMMPS_EXE=lmp_daily
#make DIR_PATH=AMB_SINGLE METHOD=submit M=T T=star CLUSTER=bigred3
#make DIR_PATH=AMB_MANY METHOD=local-run-parallel M=T T=star NODESIZE=16 MPI_EXE=mpirun LAMMPS_EXE=lmp_daily
#make DIR_PATH=AMB_MANY METHOD=submit M=T T=star CLUSTER=bigred3
#make DIR_PATH=SHEAR METHOD=submit M=T T=star P=0.1 U=311 S=1e10 F=1000 CLUSTER=bigred3

#Examples for SQL
#make DIR_PATH=AMB_SINGLE METHOD=local-run-parallel M=S NODESIZE=4 MPI_EXE=mpirun LAMMPS_EXE=lmp_daily
#make DIR_PATH=AMB_SINGLE METHOD=local-run-serial M=S LAMMPS_EXE=lmp_daily
#make DIR_PATH=AMB_SINGLE METHOD=submit M=S CLUSTER=bigred3
#make DIR_PATH=AMB_MANY METHOD=submit M=S CLUSTER=bigred3
#make DIR_PATH=SHEAR METHOD=local-run-parallel NODESIZE=4 MPI_EXE=mpirun LAMMPS_EXE=lmp_daily M=S P=0.1 S=1e10 F=1000
#make DIR_PATH=SHEAR METHOD=local-run-serial MPI_EXE=mpirun LAMMPS_EXE=lmp_daily M=S P=100 S=1e10 F=1000
#make DIR_PATH=SHEAR METHOD=submit M=S P =0.1 S=1e10 F=1000 CLUSTER=bigred3

#Examples for SQL different pressure sample generation
#make DIR_PATH=HP METHOD=submit CLUSTER=bigred3 M=S T=sql P=100 E=0.1 R=0.81843211 O=0.867
#make DIR_PATH=HP METHOD=submit CLUSTER=bigred3 M=S T=sql P=300 E=100 R=0.86715711 O=0.923
#make DIR_PATH=HP METHOD=submit CLUSTER=bigred3 M=S T=sql P=400 E=100 R=0.86715711 O=0.942
#make DIR_PATH=HP METHOD=submit CLUSTER=bigred3 M=S T=sql P=636 E=400 R=0.94403833 O=0.979
#make DIR_PATH=HP METHOD=submit CLUSTER=bigred3 M=S T=sql P=875 E=636 R=0.98044582 O=1.0076
#make DIR_PATH=HP METHOD=submit CLUSTER=bigred3 M=S T=sql P=955 E=875 R=1.0096096 O=1.0158
#make DIR_PATH=HP METHOD=local-run-serial LAMMPS_EXE=lmp_daily M=S T=sql P=100 E=0.1 R=0.81843211 O=0.867
#make DIR_PATH=HP METHOD=local-run-parallel NODESIZE=4 MPI_EXE=mpirun LAMMPS_EXE=lmp_daily M=S T=sql P=100 E=0.1 R=0.81843211 O=0.867

# HP sample deformation
#make DIR_PATH=HP_DEN METHOD=submit CLUSTER=bigred3 M=S T=sql P=0.1 R=0.81843211 O=0.81907956
#make DIR_PATH=HP_DEN METHOD=submit CLUSTER=bigred3 M=S T=sql P=100 R=0.86715711 O=0.867463
#make DIR_PATH=HP_DEN METHOD=submit CLUSTER=bigred3 M=S T=sql P=400 R=0.94403833 O=0.942689
#make DIR_PATH=HP_DEN METHOD=submit CLUSTER=bigred3 M=S T=sql P=636 R=0.98044582 O=0.979621
#make DIR_PATH=HP_DEN METHOD=submit CLUSTER=bigred3 M=S T=sql P=875 R=1.0096096 O=1.00761
#make DIR_PATH=HP_DEN METHOD=submit CLUSTER=bigred3 M=S T=sql P=955 R=1.0170928 O=1.01583


#Cleaning
#make clean DIR_PATH=AMB_SINGLE
#make clean DIR_PATH=AMB_MANY
#make clean DIR_PATH=SHEAR
#make clean DIR_PATH=HP
#make clean DIR_PATH=HP_DEN

#This make file builds the sub folder make files

AMB = ambient
HP = highPressure
HP_DEN = highPressureDensity
SHEAR = shearing
DIR_PATH = AMB_SINGLE
METHOD = submit
M=S
T=sql
NODESIZE=4
MPI_EXE=mpirun
LAMMPS_EXE=lmp_daily
CLUSTER=bigred3
RESTART_FILE_1=sql.gphase1.*
RESTART_FILE_2=sql.T*
RESTART_FILE_HP=sql.T293K.P0.1MPa.*

#rho_input
R=0.81843211
#rho_target 
O=0.867
# Pin this variable is the in pressure for the sample generation of high pressure simulation
E=0.1
P=0.1
S=1e10
F=1000
U=293

all:
	@echo "Starting build of the $(DIR_PATH) directory";
	
ifeq ($(M),T)
	@echo "STAR molecule is selected";	
else ifeq ($(M),S)
	@echo "SQUALANE molecule is selected";
endif
	
ifeq ($(DIR_PATH),AMB_SINGLE)
	+$(MAKE) -C $(AMB)/singlemolecule $(METHOD) M=$(M) MPI_EXE=$(MPI_EXE) NODESIZE=$(NODESIZE) LAMMPS_EXE=$(LAMMPS_EXE) CLUSTER=$(CLUSTER)
else ifeq ($(DIR_PATH),AMB_MANY)
	+$(MAKE) -C $(AMB)/manymolecules $(METHOD) M=$(M) MPI_EXE=$(MPI_EXE) NODESIZE=$(NODESIZE) LAMMPS_EXE=$(LAMMPS_EXE) CLUSTER=$(CLUSTER)
else ifeq ($(DIR_PATH),HP)
	@echo "Searching for $(T).T293K.P$(E)MPa.* restart file";
ifeq ($(E),0.1)
	if ! test -f $(AMB)/manymolecules/restart_files/$(T).T$(U)K.P$(E)MPa.* ; then echo "You need manymolecules restart file: $(AMB)/manymolecules/restart_files/$(T).T$(U)K.P$(E)MPa.* to start HP simulation for $(P)MPa"; exit 1; fi
	@echo "Copying restart files from manymolecules to HP folder";
	cp -r $(AMB)/manymolecules/restart_files $(HP)/
else
	if ! test -f $(HP)/restart_files/$(T).T$(U)K.P$(E)MPa.* ; then echo "You need the restart file: $(HP)/restart_files/$(T).T$(U)K.P$(E)MPa.* to start HP simulation for $(P)MPa"; exit 1; fi
endif
	+$(MAKE) -C $(HP) $(METHOD) M=$(M) P=$(P) R=$(R) O=$(O) MPI_EXE=$(MPI_EXE) NODESIZE=$(NODESIZE) LAMMPS_EXE=$(LAMMPS_EXE) CLUSTER=$(CLUSTER) RESTART_FILE_HP=$(T).T$(U)K.P$(E)MPa.*
else ifeq ($(DIR_PATH),HP_DEN)
	@echo "Searching for $(T).T$(U)K.P$(E)MPa.* restart file";
	if ! test -f $(HP_DEN)/restart_files/$(T).T$(U)K.P$(E)MPa.* ; then echo "You need the restart file: $(HP_DEN)/restart_files/$(T).T$(U)K.P$(E)MPa.* to start Deformation simulation for $(P)MPa"; exit 1; fi
	+$(MAKE) -C $(HP_DEN) $(METHOD) M=$(M) P=$(P) R=$(R) O=$(O) MPI_EXE=$(MPI_EXE) NODESIZE=$(NODESIZE) LAMMPS_EXE=$(LAMMPS_EXE) CLUSTER=$(CLUSTER) RESTART_FILE_HP=$(T).T$(U)K.P$(E)MPa.*
else ifeq ($(DIR_PATH),SHEAR)
	@echo "Searching for $(T).T$(U)K.P$(P)MPa.* restart file";
ifeq ($(P),0.1)
	if ! test -f $(AMB)/manymolecules/restart_files/$(T).T$(U)K.P$(P)MPa.* ; then echo "You need manymolecules restart file $(AMB)/manymolecules/restart_files/$(T).T$(U)K.P$(P)MPa.* to start shearing"; exit 1; fi
	@echo "Copying restart files from manymolecules to shearing folder";
	cp -r $(AMB)/manymolecules/restart_files $(SHEAR)/
else
	if ! test -f $(HP)/restart_files/$(T).T$(U)K.P$(P)MPa.* ; then echo "You need high pressure restart file $(HP)/restart_files/$(T).T$(U)K.P$(P)MPa.* to start shearing"; exit 1; fi
	@echo "Copying restart files from $(HP)/restart_files to shearing folder";
	cp -r $(HP)/restart_files $(SHEAR)/
endif
	+$(MAKE) -C $(SHEAR)/ $(METHOD) M=$(M) P=$(P) S=$(S) F=$(F) MPI_EXE=$(MPI_EXE) NODESIZE=$(NODESIZE) LAMMPS_EXE=$(LAMMPS_EXE) CLUSTER=$(CLUSTER)
else
	@echo "Build path is not selected";
endif
	@echo "Ending the build of the $(DIR_PATH) directory";

clean:
	@echo "Cleaning the $(DIR_PATH) directory";
ifeq ($(DIR_PATH),AMB_SINGLE)
	+$(MAKE) -C $(AMB)/singlemolecule clean
else ifeq ($(DIR_PATH),AMB_MANY)
	+$(MAKE) -C $(AMB)/manymolecules clean
else ifeq ($(DIR_PATH),HP)
	+$(MAKE) -C $(HP) clean
else ifeq ($(DIR_PATH),HP_DEN)
	+$(MAKE) -C $(HP) clean
else
	+$(MAKE) -C $(SHEAR) clean
endif
	@echo "Cleaned the $(DIR_PATH) directory";

.PHONY: all clean