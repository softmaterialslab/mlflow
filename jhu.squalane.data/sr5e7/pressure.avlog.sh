#!/bin/bash
# this script computes the errorbar on the desired quantity using block averaging method
echo 'pressure'
file=pressure.out
rate=$1
afterstrain=$2
blocksize=$3
awk -v n=$afterstrain ' $2 > n ' $file > tmp1.out	# process data after afterstrain amount of strain
awk '{print $3}' tmp1.out > tmp2.out			# get only the pxx column
avgx=$(awk '{s += $1} END{ print s/(NR)}' tmp2.out)
avgx=`echo ${avgx} | sed -e 's/[eE]+*/\\*10\\^/'`
echo 'average ' $avgx
awk -v m=$blocksize '{s+=$1} (NR%m==0){avgx=s/m;print avgx;s=0;next}' tmp2.out > tmp3.out
sqavg=$(awk '{sqsum+=$1*$1} END{print sqsum/(NR)}' tmp3.out) 
sqavg=`echo ${sqavg} | sed -e 's/[eE]+*/\\*10\\^/'`
echo 'square average ' $sqavg
nblock=$(awk 'END{print NR}' tmp3.out)
nblock=`echo ${nblock} | sed -e 's/[eE]+*/\\*10\\^/'`
echo 'number of blocks ' $nblock
diff=$(echo "(($sqavg-($avgx*$avgx))/$nblock)" | bc -l)
absdiff=`echo ${diff#-} | sed -e 's/[eE]+*/\\*10\\^/'`
varx=$(echo sqrt "($absdiff)" | bc -l)
echo 'variance ' $varx
rm tmp2.out tmp3.out

awk '{print $4}' tmp1.out > tmp2.out			# get only the pyy column
avgy=$(awk '{s += $1} END{ print s/(NR)}' tmp2.out)
avgy=`echo ${avgy} | sed -e 's/[eE]+*/\\*10\\^/'`
echo 'average ' $avgy
awk -v m=$blocksize '{s+=$1} (NR%m==0){avgy=s/m;print avgy;s=0;next}' tmp2.out > tmp3.out
sqavg=$(awk '{sqsum+=$1*$1} END{print sqsum/(NR)}' tmp3.out) 
sqavg=`echo ${sqavg} | sed -e 's/[eE]+*/\\*10\\^/'`
echo 'square average ' $sqavg
nblock=$(awk 'END{print NR}' tmp3.out)
nblock=`echo ${nblock} | sed -e 's/[eE]+*/\\*10\\^/'`
echo 'number of blocks ' $nblock
diff=$(echo "(($sqavg-($avgy*$avgy))/$nblock)" | bc -l)
absdiff=`echo ${diff#-} | sed -e 's/[eE]+*/\\*10\\^/'`
vary=$(echo sqrt "($absdiff)" | bc -l)
echo 'variance ' $vary
rm tmp2.out tmp3.out

awk '{print $5}' tmp1.out > tmp2.out			# get only the pyy column
avgz=$(awk '{s += $1} END{ print s/(NR)}' tmp2.out)
avgz=`echo ${avgz} | sed -e 's/[eE]+*/\\*10\\^/'`
echo 'average ' $avgz
awk -v m=$blocksize '{s+=$1} (NR%m==0){avgz=s/m;print avgz;s=0;next}' tmp2.out > tmp3.out
sqavg=$(awk '{sqsum+=$1*$1} END{print sqsum/(NR)}' tmp3.out) 
sqavg=`echo ${sqavg} | sed -e 's/[eE]+*/\\*10\\^/'`
echo 'square average ' $sqavg
nblock=$(awk 'END{print NR}' tmp3.out)
nblock=`echo ${nblock} | sed -e 's/[eE]+*/\\*10\\^/'`
echo 'number of blocks ' $nblock
diff=$(echo "(($sqavg-($avgz*$avgz))/$nblock)" | bc -l)
absdiff=`echo ${diff#-} | sed -e 's/[eE]+*/\\*10\\^/'`
varz=$(echo sqrt "($absdiff)" | bc -l)
echo 'variance ' $varz
rm tmp2.out tmp3.out

printf "$afterstrain $rate $avgx $avgy $avgz $varx $vary $varz" > check.rp.out

paste -s check.rp.out >> '../check.new.pressure.rate.out'
