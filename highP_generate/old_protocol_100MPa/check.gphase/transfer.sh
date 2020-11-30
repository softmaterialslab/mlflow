#!/bin/sh
echo -e "If transferring results from starting (original) run, enter 0. Else enter the restart number, for example if transferring data from the first restart run enter 1"
read -r resnum
dir="with.correct.forceconstants${resnum}"
if [ $resnum -eq 0 ] 
then
mkdir all.dump.endatoms
mkdir all.data.all
fi
mkdir ${dir}
mv *.out ${dir}/
mv *.dat ${dir}/
mv *.lammps ${dir}/
mv *.atom ${dir}/
cp in.* ${dir}/
echo 'files moved to the directory restart'$resnum 
echo 'dump endatoms files moved to a separate folder for easy access'
echo 'cleaning...'
make jobclean
make clean
echo 'done'

