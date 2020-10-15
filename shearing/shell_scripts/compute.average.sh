#!/bin/sh
rm new.stress.rate.out
currentdir=$(pwd)
echo ${currentdir}
for dir in from.sr5e6.to.sr1e6 from.sr5e6.to.sr2e6 from.sr1e7.to.sr5e6 from.sr5e7.to.sr1e7 from.sr5e7.to.sr2e7 
do
   if [ -d "${dir}" ]; then
   	dirname="$(basename "${dir}")"
   	cd ${dirname}
   	echo ${dirname}
   	rate=`echo ${dirname} | cut -c 17-`
	if [ "$rate" = "5e5" ] 
	then
	sh avlog.sh $rate 0 1000
	fi
	if [ "$rate" = "1e6" ] 
	then
	sh avlog.sh $rate 0 1000
	fi
	if [ "$rate" = "2e6" ] 
	then
	sh avlog.sh $rate 0 1000
	fi
	if [ "$rate" = "5e6" ] 
	then
	sh avlog.sh $rate 0 500
	fi
	if [ "$rate" = "1e7" ] 
	then
	sh avlog.sh $rate 0 3000
	fi
	if [ "$rate" = "2e7" ] 
	then
	sh avlog.sh $rate 0 3000
	fi
	if [ "$rate" = "3e7" ] 
	then
	sh avlog.sh $rate 55 1000
	fi
   	echo "average calculated after strain = `echo ${afterstrain}`"
	cd ..
   fi
done
for dir in sr5e7 sr1e8 sr2e8 sr3e8 sr5e8 sr1e9 sr2e9 sr3e9 sr5e9 sr1e10 sr2e10 sr3e10 sr5e10
do
   if [ -d "${dir}" ]; then
   	dirname="$(basename "${dir}")"
   	cd ${dirname}
   	echo ${dirname}
   	rate=`echo ${dirname} | cut -c 3-`
	if [ "$rate" = "3e7" ] 
	then
	sh avlog.sh $rate 70 1000
	fi
	if [ "$rate" = "5e7" ] 
	then
	sh avlog.sh $rate 50 1000
	fi
	if [ "$rate" = "1e8" ] 
	then
	sh avlog.sh $rate 50 500
	fi
	if [ "$rate" = "2e8" ] 
	then
	sh avlog.sh $rate 100 500
	fi
	if [ "$rate" = "3e8" ] 
	then
	sh avlog.sh $rate 100 500
	fi
	if [ "$rate" = "5e8" ] 
	then
	sh avlog.sh $rate 200 500
	fi
	if [ "$rate" = "1e9" ] 
	then
	sh avlog.sh $rate 50 100
	fi
	if [ "$rate" = "2e9" ] 
	then
	sh avlog.sh $rate 100 100
	fi
	if [ "$rate" = "3e9" ] 
	then
	sh avlog.sh $rate 50 500
	fi
	if [ "$rate" = "5e9" ] 
	then
	sh avlog.sh $rate 200 100
	fi
	if [ "$rate" = "1e10" ] 
	then
	sh avlog.sh $rate 50 1000
	fi
	if [ "$rate" = "2e10" ] 
	then
	sh avlog.sh $rate 200 10
	fi
	if [ "$rate" = "3e10" ] 
	then
	sh avlog.sh $rate 300 10
	fi
	if [ "$rate" = "5e10" ] 
	then
	sh avlog.sh $rate 500 10
	fi
	cd ..
   fi
done
