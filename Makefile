# make 
#This make file builds the sub folder make files

AMB = ambient
SHEAR = shearing
PATH_KEY = AMB_P1
MAKE_CALL = submit M=T

run:
	@echo "Starting build of the $(BASE) directory";
ifeq ($(PATH_KEY),AMB_P1)
	+$(MAKE) -C $(AMB)/phase1 $(MAKE_CALL)
else ifeq ($(PATH_KEY),AMB_P2)
	+$(MAKE) -C $(AMB)/phase2 $(MAKE_CALL)
else
	+$(MAKE) -C $(SHEAR) $(MAKE_CALL)
endif
	@echo "Ending the build of the $(BASE) directory";
	@echo "installing the $(PROG) into $(BIN) directory"; cp -f $(BASE)/$(PROG) $(BIN)

clean: dataclean
	rm -f $(BASE)/*.o
	rm -f $(BASE)/$(PROG)
	rm -f $(BIN)/$(PROG)
	rm -rf $(BIN)/outfiles
	rm -rf $(BIN)/data
	rm -f $(BIN)/*.lammps
	rm -rf $(BIN)/temp

dataclean:
	rm -f $(BIN)/outfiles/*.dat $(BIN)/outfiles/*.xyz  $(BIN)/outfiles/*.lammpstrj  $(BIN)/temp/*
	rm -f $(BIN)/data/*.dat $(BIN)/data/*.xyz  $(BIN)/data/*.lammpstrj
	rm -f $(BIN)/*.log
	rm -f $(BIN)/*.pbs
	rm -f $(BIN)/*.lammps

.PHONY: all clean dataclean