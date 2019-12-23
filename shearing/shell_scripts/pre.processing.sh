#!/bin/sh
# This loads all the variables with -S 1e10 -F 1000 pattern
# The NEMD simulations expect following valiables.
# If not given will be defaulted to following values
S=1e10	# strain rate
F=1000	# move and file dump frequency

while [ $# -gt 0 ]; do

   if [[ $1 == *"-"* ]]; then
        v="${1/-/}"
        declare $v="$2"
		#echo "$v=${!v}"
   fi

  shift
done

# Print program values
echo "Strain rate = $S"
echo "Dump frequency = $F"

# create a LAMMPS input file from the template
cat ../infiles/in.lammps.template | \
sed -e 's/USER-S-USER/'$S'/g' | \
sed -e 's/USER-F-USER/'$F'/g' > ../in.squalane.shear