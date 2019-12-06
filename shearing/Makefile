#Example runs
#make run-local-parallel MPI_EXE=mpirun LAMMPS_EXE=lmp_g++ S=1e10 F=1000
#make run-local-serial LAMMPS_EXE=lmp_g++ S=1e10 F=1000
#make submit S=1e10 F=1000

JOBSCR = squalane.shear.pbs
LAMMPS_IN = in.squalane.shear
S=1e10 
F=100 
NODESIZE=4
MPI_EXE=mpirun
LAMMPS_EXE=lmp_g++

create-dirs:
	@echo "Checking and creating needed sub-directories"
	if ! [ -d outfiles ]; then mkdir outfiles; fi
	if ! [ -d data ]; then mkdir data; fi
	@echo "Directory creation is over."

run-preprocessor:
	@echo "Running the preprocessor to create lammps script."
	chmod +x shell_scripts/pre.processing.sh
	cd shell_scripts && ./pre.processing.sh -S $(S) -F $(F) && cd ..
	@echo "Running the preprocessor is over."

submit: create-dirs run-preprocessor
	@echo "Launching the job"
	qsub $(JOBSCR)

local-run-parallel: create-dirs run-preprocessor
	@echo "Running the job. "
	time $(MPI_EXE) -n $(NODESIZE) $(LAMMPS_EXE) < $(LAMMPS_IN)

local-run-serial: create-dirs run-preprocessor
	@echo "Running the job. "
	time $(LAMMPS_EXE) < $(LAMMPS_IN)

clean:
	rm -f $(LAMMPS_IN)

dataclean:
	rm -f outfiles/*
	rm -f data/*	
	rm -f *.lammps
	rm -f *.log
	rm -f *.in

.PHONY: clean dataclean run-preprocessor create-dirs