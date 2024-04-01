#!/bin/sh
srate=$1
resnum=$2
mynum=`echo "${resnum}-1" | bc -l`
if [ $resnum -eq 0 ]
then
sh avlog.sh $srate $resnum
sh running.avlog.sh $srate 1
else
cat restart$mynum/strain.stress.out strain.stress.out > new.out && mv new.out strain.stress.out
cat restart$mynum/pressure.out pressure.out > new.out && mv new.out pressure.out
cat restart$mynum/thermo.dat thermo.dat > new.out && mv new.out thermo.dat
cat restart$mynum/virial.out virial.out > new.out && mv new.out virial.out
cat restart$mynum/ktensor.out ktensor.out > new.out && mv new.out ktensor.out
sh avlog.sh $srate $resnum
sh running.avlog.sh $srate 1
fi
echo 'pressure, stress.strain, ktensor, virial are all concatenated'
echo 'averages computed will all accumulated data until now'
