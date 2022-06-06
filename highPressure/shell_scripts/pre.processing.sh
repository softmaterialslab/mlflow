#!/bin/sh
#!/bin/bash
# This loads all the variables with -S 1e10 -F 1000 pattern
# The NEMD simulations expect following valiables.
# If not given will be defaulted to following values
M=T	# T:star S=sql

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
   M='sql'
elif [ $M == 'T' ]
then
   M='star'
fi


# Print program values
echo "Selected modecular model = $M"

# Calculate variables
V_SCALEFAC_V=$(awk 'BEGIN { printf "%.17g",((ARGV[1]/ARGV[2]) ** (1.0 / 3.0)) }' $R $O)

# create a LAMMPS input file from the template
cat ../infiles/in.lammps.GENERIC.template | \
sed -e 's/V_SCALEFAC_V/'$V_SCALEFAC_V'/g' | \
sed -e 's/V_MOLECULE_V/'$M'/g' | \
sed -e 's/USER-U-USER/'$U'/g' | \
sed -e 's/V_PIN_V/'$E'/g' | \
sed -e 's/V_POUT_V/'$P'/g' > ../in.highP