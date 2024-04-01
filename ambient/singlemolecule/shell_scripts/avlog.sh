#!/bin/bash
# this script computes the errorbar on the desired quantity using block averaging method
blocksize=100
echo 'stress'
file=strain.stress.out
rate=$1
resnum=$2
awk '{print $3}' $file > tmp2.out		# get only the stress column
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
printf "$resnum $rate $avg $var" > rs.out
paste -s rs.out >> '../stress.rate.out'
rm tmp*.out
file=pressure.out
echo 'pxx'
awk '{print $3}' $file > tmp2.out		# get only the stress column
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
printf "$resnum $rate $avg $var" > pxx.out
rm tmp*.out
###
echo 'pyy'
awk '{print $4}' $file > tmp2.out            # get only the stress column
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
printf "$resnum $rate $avg $var" > pyy.out
rm tmp*.out
###
echo 'pzz'
awk '{print $5}' $file > tmp2.out            # get only the stress column
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
printf "$resnum $rate $avg $var" > pzz.out
rm tmp*.out
paste pxx.out pyy.out pzz.out |awk '{print $1 "   " $2 "   " $3 "   " $7 "   " $11 "   " $4 "   " $8 "   " $12}' > rp.out
paste -s rp.out >> '../pressure.rate.out'
###
file=ktensor
echo 'xx'
awk '{print $3}' $file.out > tmp2.out           # get only the stress column
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
printf "$resnum $rate $avg $var" > kxx.out
rm tmp*.out
###
echo 'yy'
awk '{print $4}' $file.out > tmp2.out            # get only the stress column
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
printf "$resnum $rate $avg $var" > kyy.out
rm tmp*.out
###
echo 'zz'
awk '{print $5}' $file.out > tmp2.out            # get only the stress column
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
printf "$resnum $rate $avg $var" > kzz.out
rm tmp*.out
paste kxx.out kyy.out kzz.out |awk '{print $1 "   " $2 "   " $3 "   " $7 "   " $11 "   " $4 "   " $8 "   " $12}' > tmptensor.out
paste -s tmptensor.out >> "../$file.rate.out"
rm kxx.out kyy.out kzz.out tmptensor.out
###
file=virial
echo 'xx'
awk '{print $3}' $file.out > tmp2.out           # get only the stress column
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
printf "$resnum $rate $avg $var" > kxx.out
rm tmp*.out
###
echo 'yy'
awk '{print $4}' $file.out > tmp2.out            # get only the stress column
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
printf "$resnum $rate $avg $var" > kyy.out
rm tmp*.out
###
echo 'zz'
awk '{print $5}' $file.out > tmp2.out            # get only the stress column
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
printf "$resnum $rate $avg $var" > kzz.out
rm tmp*.out
paste kxx.out kyy.out kzz.out |awk '{print $1 "   " $2 "   " $3 "   " $7 "   " $11 "   " $4 "   " $8 "   " $12}' > tmptensor.out
paste -s tmptensor.out >> "../$file.rate.out"
rm kxx.out kyy.out kzz.out tmptensor.out
