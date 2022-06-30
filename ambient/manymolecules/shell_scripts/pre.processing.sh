#!/bin/sh
#!/bin/bash
# This loads all the variables with -S 1e10 -F 1000 pattern
# The NEMD simulations expect following valiables.
# If not given will be defaulted to following values
M=T	# T:STAR S=SQL


while [ $# -gt 0 ]; do

   if [[ $1 == *"-"* ]]; then
        v="${1/-/}"
        declare $v="$2"
		#echo "$v=${!v}"
   fi

  shift
done

if [ $M == 'S' ]
then
   M='SQL'
elif [ $M == 'T' ]
then
   M='STAR'
fi

# Print program values
echo "Selected modecular model = $M"

# create a LAMMPS input file from the template
cat ../infiles/in.lammps.$M.template | \
sed -e 's/V_MOLECULE_V/'$M'/g' | \
sed -e 's/USER-M-USER/'$M'/g' > ../in.ambient