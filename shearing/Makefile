#Example runs
#make run-local-parallel MPI_EXE=mpirun LAMMPS_EXE=lmp_g++ S=1e10 F=1000
#make run-local-serial LAMMPS_EXE=lmp_g++ S=1e10 F=1000
#make submit S=1e10 F=1000

JOBSCR = shear.pbs
JOBSCR_bigred3 = bigred3shear.pbs
LAMMPS_IN = in.shear
S=1e10 
F=100 
NODESIZE=4
MPI_EXE=mpirun
LAMMPS_EXE=lmp_g++
CLUSTER=bigred3
M=T

create-dirs:
	@echo "Checking and creating needed sub-directories"
	if ! [ -d outfiles ]; then mkdir outfiles; fi
	if ! [ -d data ]; then mkdir data; fi
	@echo "Directory creation is over."

run-preprocessor:
	@echo "Running the preprocessor to create lammps script."
	chmod +x shell_scripts/pre.processing.sh
	cd shell_scripts && bash ./pre.processing.sh -M $(M) -S $(S) -F $(F) && cd ..
	@echo "Running the preprocessor is over."

submit: create-dirs run-preprocessor
ifeq ($(CLUSTER),bigred3)
	cp jobscripts/$(JOBSCR_bigred3) .
	@echo "Launching the job"
	sbatch $(JOBSCR_bigred3)
else ifeq ($(DIR_PATH),bigred200)
	cp jobscripts/$(JOBSCR) .
	@echo "Launching the job"
	qsub $(JOBSCR)
endif
	@echo "Job submitted to $(CLUSTER)";	

local-run-parallel: create-dirs run-preprocessor
	@echo "Running the job. "
	time $(MPI_EXE) -n $(NODESIZE) $(LAMMPS_EXE) < $(LAMMPS_IN)

local-run-serial: create-dirs run-preprocessor
	@echo "Running the job. "
	time $(LAMMPS_EXE) < $(LAMMPS_IN)

clean: dataclean
	rm -f $(LAMMPS_IN)

dataclean:
	rm -f outfiles/*
	rm -f restart_files/*
	rm -f data/*	
	rm -f *.lammps
	rm -f *.log
	rm -f *.in
	rm -f *.pbs

.PHONY: clean dataclean run-preprocessor create-dirs