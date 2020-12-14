#!/bin/bash
# this script computes the errorbar on the desired quantity using block averaging method
echo 'stress'
file=strain.stress.out
rate=$1
afterstrain=$2
blocksize=$3
awk -v n=$afterstrain ' $2 > n ' $file > tmp1.out	# get data after strain of 10
awk '{print $3}' tmp1.out > tmp2.out	# get only the stress column
avg=$(awk '{s += $1} END{ print s/(NR)}' tmp2.out)
avg=`echo ${avg} | sed -e 's/[eE]+*/\\*10\\^/'`
echo 'average ' $avg
awk -v m=$blocksize '{s+=$1} (NR%m==0){avg=s/m;print avg;s=0;next}' tmp2.out > tmp3.out
sqavg=$(awk '{sqsum+=$1*$1} END{print sqsum/(NR)}' tmp3.out) 
sqavg=`echo ${sqavg} | sed -e 's/[eE]+*/\\*10\\^/'`
echo 'square average ' $sqavg
nblock=$(awk 'END{print NR}' tmp3.out)
nblock=`echo ${nblock} | sed -e 's/[eE]+*/\\*10\\^/'`
echo 'number of blocks ' $nblock
diff=$(echo "(($sqavg-($avg*$avg))/$nblock)" | bc -l)
absdiff=`echo ${diff#-} | sed -e 's/[eE]+*/\\*10\\^/'`
var=$(echo sqrt "($absdiff)" | bc -l)
echo 'variance ' $var
printf "$afterstrain $rate $avg $var" > rs.out
paste -s rs.out >> '../new.stress.rate.out'
rm tmp*.out
