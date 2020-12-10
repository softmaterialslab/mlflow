#!/bin/sh
# the script below cleans up log.lammps to get thermo out
# then, it edits dump.output.endatoms to readable format 
# then, it edits vel.profile to readable format
# clean log
file0=log.lammps
if test -s $file 
then
awk '
/Step/,/Loop/ { print }
' $file0 > x.dat
awk '
!($0 ~ /Step/) { print }
' x.dat > y.dat 
awk '
!($0 ~ /Loop/) { print }
' y.dat > thermo.dat 
rm x.dat
rm y.dat
echo "Generated thermo.dat"
echo "Done!"
else
echo "where is log.lammps?"
fi 
# delete last line of thermo to align with subsequent restarts
head -n -1 thermo.dat > tmpf && mv tmpf thermo.dat
# clean dump endatoms
#for file in dump.output.endatoms.*; do tail -n +10 $file > tmpf && mv tmpf $file; done
###for file in data.rg.all.*; do tail -n +10 $file > tmpf && mv tmpf $file; done
# clean output files
###tail -n +3 strain.stress.out > tmpf && mv tmpf strain.stress.out
###tail -n +3 pressure.out > tmpf && mv tmpf pressure.out
###tail -n +3 virial.out > tmpf && mv tmpf virial.out
###tail -n +3 ktensor.out > tmpf && mv tmpf ktensor.out

