reset
set fontpath \
"/usr/share/texmf/fonts/type1/public/cm-super/" \
"/usr/share/texlive/texmf-dist/fonts/type1/public/amsfonts/cm/"
set terminal postscript eps enhanced color lw 1.5 dl 3.0 \
font 'Helvetica' \
fontfile 'cmmi10.pfb' \
fontfile 'cmr10.pfb' \
fontfile 'cmmib10.pfb' \
fontfile 'cmti10.pfb'
  
#font 'SFRM1000' \
#fontfile 'sfrm1000.pfb' \
#fontfile 'sfss1000.pfb' \
#fontfile 'sfsx1000.pfb' \
set border linewidth 1
set style line 1 linecolor rgb 'red' linetype 1 linewidth 1 pointtype 6 pointsize 1
set style line 2 linecolor rgb 'green' linetype 1 linewidth 1 pointtype 6  pointsize 1
set style line 3 linecolor rgb 'blue' linetype 1 linewidth 1 pointtype 6 pointsize 1
set style line 4 linecolor rgb 'orange' linetype 1 linewidth 1 pointtype 6 pointsize 1
set style line 5 linecolor rgb 'cyan' linetype 1 linewidth 1 pointtype 6  pointsize 1
set style line 6 linecolor rgb 'magenta' linetype 1 linewidth 1 pointtype 6  pointsize 1
set style line 7 linecolor rgb 'brown' linetype 1 linewidth 1 pointtype 6  pointsize 1
set style line 8 linecolor rgb 'purple' linetype 1 linewidth 1 pointtype 6  pointsize 1
set style line 9 linecolor rgb 'olive' linetype 1 linewidth 1 pointtype 6  pointsize 1
set style line 10 linecolor rgb 'pink' linetype 1 linewidth 1 pointtype 6 pointsize 1
set style line 11 linecolor rgb 'greenyellow' linetype 1 linewidth 1 pointtype 6 pointsize 1
set style line 12 linecolor rgb 'royalblue' linetype 1 linewidth 1 pointtype 6 pointsize 1
set style line 13 linecolor rgb 'gold' linetype 1 linewidth 1 pointtype 6 pointsize 1
set style line 14 linecolor rgb 'plum' linetype 1 linewidth 1 pointtype 6 pointsize 1

set style line 50 linecolor rgb 'black' linetype 2 linewidth 2 pointtype 7 pointsize 1
set style line 51 linecolor rgb 'brown' linetype 2 linewidth 2 pointtype 7 pointsize 1
set style line 52 linecolor rgb 'slategray' linetype 2 linewidth 2 pointtype 7 pointsize 1
set style line 53 linecolor rgb 'pink' linetype 2 linewidth 2 pointtype 7 pointsize 1
set style line 54 linecolor rgb 'orange' linetype 2 linewidth 2 pointtype 7 pointsize 1
set style line 55 linecolor rgb 'black' linetype 3 linewidth 1.2 pointtype 7 pointsize 1
set style line 56 linecolor rgb 'brown' linetype 5 linewidth 1.5 pointtype 7 pointsize 1
set style line 57 linecolor rgb 'black' linetype 1 linewidth 1.5 pointtype 7 pointsize 1
set style line 58 linecolor rgb 'black' linetype 3 linewidth 1.5 pointtype 7 pointsize 1
set style line 500 linecolor rgb 'slategray' linetype 5 linewidth 1 pointtype 7 pointsize 1
set style line 501 linecolor rgb 'red' linetype 6 linewidth 1.5 pointtype 7 pointsize 1
set style line 502 linecolor rgb 'slategray' linetype 6 linewidth 1.5 pointtype 7 pointsize 1
set style line 503 linecolor rgb 'red' linetype 4 linewidth 1.5 pointtype 7 pointsize 1
set style line 5000 linecolor rgb 'black' linetype 1 linewidth 1.5 pointtype 7 pointsize 1
set style line 580 linecolor rgb 'black' linetype 4 linewidth 1.5 pointtype 7 pointsize 1

set style line 507 linecolor rgb 'blue' linetype 4 linewidth 1.5 pointtype 7 pointsize 1
set style line 508 linecolor rgb 'red' linetype 6 linewidth 1.5 pointtype 7 pointsize 1
set style line 509 linecolor rgb 'green' linetype 1 linewidth 1.5 pointtype 7 pointsize 1

set style line 70 linecolor rgb 'magenta' linetype 1 linewidth 1 pointtype 7 pointsize 1.5
set style line 71 linecolor rgb 'red' linetype 1 linewidth 1 pointtype 9 pointsize 1.5
set style line 72 linecolor rgb 'green' linetype 1 linewidth 1 pointtype 13  pointsize 1.5
set style line 73 linecolor rgb 'blue' linetype 1 linewidth 1 pointtype 5 pointsize 1.5
set style line 74 linecolor rgb 'black' linetype 1 linewidth 1 pointtype 4 pointsize 1.5
set style line 75 linecolor rgb 'red' linetype 1 linewidth 1 pointtype 6 pointsize 1.5
set style line 76 linecolor rgb 'green' linetype 1 linewidth 1 pointtype 8  pointsize 1.5
set style line 77 linecolor rgb 'blue' linetype 1 linewidth 1 pointtype 10  pointsize 1.5
set style line 78 linecolor rgb 'magenta' linetype 1 linewidth 1 pointtype 12  pointsize 1.5
set style line 79 linecolor rgb 'black' linetype 1 linewidth 1 pointtype 14  pointsize 1.5
set style line 700 linecolor rgb 'magenta' linetype 1 linewidth 1 pointtype 7 pointsize 1.5
set style line 720 linecolor rgb 'green' linetype 1 linewidth 1 pointtype 11  pointsize 1.5
set style line 730 linecolor rgb 'olive' linetype 1 linewidth 1 pointtype 15  pointsize 1.5
set style line 790 linecolor rgb 'cyan' linetype 1 linewidth 1 pointtype 14  pointsize 1.5

set style line 791 linecolor rgb 'red' linetype 1 linewidth 1 pointtype 12  pointsize 1.5
set style line 792 linecolor rgb 'green' linetype 1 linewidth 1 pointtype 10  pointsize 1.5

set style line 721 linecolor rgb 'green' linetype 1 linewidth 1 pointtype 7  pointsize 1.5

set style line 775 linecolor rgb 'blue' linetype 1 linewidth 1 pointtype 2 pointsize 1.5
set style line 778 linecolor rgb 'red' linetype 1 linewidth 1 pointtype 3  pointsize 1.5
set style line 776 linecolor rgb 'green' linetype 1 linewidth 1 pointtype 3  pointsize 1.5
set style line 774 linecolor rgb 'black' linetype 1 linewidth 1 pointtype 1  pointsize 1.5

set style line 2100 linecolor rgb 'red' linetype 1 linewidth 1 pointtype 7 pointsize 1.5	#Nagel
set style line 2200 linecolor rgb 'red' linetype 1 linewidth 1 pointtype 9 pointsize 1.5	#Barlow
set style line 2300 linecolor rgb 'red' linetype 1 linewidth 1 pointtype 11  pointsize 1.5	#API in Bair
set style line 2400 linecolor rgb 'blue' linetype 1 linewidth 1 pointtype 15  pointsize 1.5	#Bair 300
set style line 2500 linecolor rgb 'green' linetype 1 linewidth 1 pointtype 15  pointsize 1.5	#Bair 800
set style line 2600 linecolor rgb 'red' linetype 1 linewidth 1 pointtype 4 pointsize 1.5	#0.1
set style line 2700 linecolor rgb 'blue' linetype 1 linewidth 1 pointtype 6  pointsize 1.5 	#300
set style line 2800 linecolor rgb 'green' linetype 1 linewidth 1 pointtype 12 pointsize 1.5	#800
set style line 2850 linecolor rgb 'black' linetype 1 linewidth 1 pointtype 10 pointsize 1.5	#800
set style line 2900 linecolor rgb 'blue' linetype 1 linewidth 1 pointtype 8  pointsize 1.5 	#0.95

set style line 2601 linecolor rgb 'red' linetype 1 linewidth 1 pointtype 5 pointsize 1.5	#0.1
set style line 2701 linecolor rgb 'blue' linetype 1 linewidth 1 pointtype 7  pointsize 1.5 	#300
set style line 2801 linecolor rgb 'green' linetype 1 linewidth 1 pointtype 13 pointsize 1.5	#800
set style line 2851 linecolor rgb 'black' linetype 1 linewidth 1 pointtype 11 pointsize 1.5	#0.95

# legends for collapse

set style line 3600 linecolor rgb 'red' linetype 1 linewidth 1 pointtype 4 pointsize 1.5	#0.1
set style line 3700 linecolor rgb 'blue' linetype 1 linewidth 1 pointtype 6  pointsize 1.5 	#300
set style line 3800 linecolor rgb 'green' linetype 1 linewidth 1 pointtype 14 pointsize 1.5	#800, 150
set style line 3801 linecolor rgb 'green' linetype 1 linewidth 1 pointtype 12 pointsize 1.5	#800, 175
set style line 3802 linecolor rgb 'green' linetype 1 linewidth 1 pointtype 10 pointsize 1.5	#800, 200
set style line 3803 linecolor rgb 'green' linetype 1 linewidth 1 pointtype 8 pointsize 1.5	#800, 250
set style line 3804 linecolor rgb 'green' linetype 1 linewidth 1 pointtype 6 pointsize 1.5	#800, 293
set style line 3805 linecolor rgb 'green' linetype 1 linewidth 1 pointtype 4 pointsize 1.5	#800, 313
set style line 3806 linecolor rgb 'blue' linetype 1 linewidth 1 pointtype 14 pointsize 1.5	#300, 150
set style line 3807 linecolor rgb 'blue' linetype 1 linewidth 1 pointtype 12 pointsize 1.5	#300, 175
set style line 3808 linecolor rgb 'blue' linetype 1 linewidth 1 pointtype 10 pointsize 1.5	#300, 200
set style line 3809 linecolor rgb 'blue' linetype 1 linewidth 1 pointtype 8 pointsize 1.5	#300, 250
set style line 3810 linecolor rgb 'blue' linetype 1 linewidth 1 pointtype 6 pointsize 1.5	#300, 293
set style line 3811 linecolor rgb 'blue' linetype 1 linewidth 1 pointtype 4 pointsize 1.5	#300, 313
set style line 3812 linecolor rgb 'red' linetype 1 linewidth 1 pointtype 14 pointsize 1.5	#0.1, 150
set style line 3813 linecolor rgb 'red' linetype 1 linewidth 1 pointtype 12 pointsize 1.5	#0.1, 175
set style line 3814 linecolor rgb 'red' linetype 1 linewidth 1 pointtype 10 pointsize 1.5	#0.1, 200
set style line 3815 linecolor rgb 'red' linetype 1 linewidth 1 pointtype 8 pointsize 1.5	#0.1, 250
set style line 3816 linecolor rgb 'green' linetype 1 linewidth 1 pointtype 2 pointsize 1.5	#800, 338
set style line 3817 linecolor rgb 'black' linetype 1 linewidth 1 pointtype 6 pointsize 1.5	#636, 293
set style line 3818 linecolor rgb 'magenta' linetype 1 linewidth 1 pointtype 6 pointsize 1.5	#875, 293
set style line 3819 linecolor rgb 'gray' linetype 1 linewidth 1 pointtype 6 pointsize 1.5	#955, 293
set style line 3820 linecolor rgb 'brown' linetype 1 linewidth 1 pointtype 7 pointsize 1.5	#955, 293
set style line 3821 linecolor rgb 'green' linetype 1 linewidth 1 pointtype 3 pointsize 1.5	#800, 373
set style line 4804 linecolor rgb 'green' linetype 1 linewidth 1 pointtype 7 pointsize 1.5	#800, 293
set style line 3822 linecolor rgb 'green' linetype 1 linewidth 1 pointtype 12  pointsize 1.5

set style line 3601 linecolor rgb 'red' linetype 1 linewidth 1 pointtype 6 pointsize 1.5	#0.1

set style line 7900 linecolor rgb 'magenta' linetype 4 linewidth 1 pointtype 6  pointsize 1.5
set style line 7400 linecolor rgb 'red' linetype 4 linewidth 1 pointtype 4 pointsize 1.5
set style line 7100 linecolor rgb 'green' linetype 4 linewidth 1 pointtype 9 pointsize 1.5
set style line 7800 linecolor rgb 'blue' linetype 4 linewidth 1 pointtype 12  pointsize 1.5
set style line 7200 linecolor rgb 'black' linetype 4 linewidth 1 pointtype 4  pointsize 1.5
set style line 7300 linecolor rgb 'red' linetype 4 linewidth 1 pointtype 6  pointsize 1.5
set style line 8000 linecolor rgb 'red' linetype 1 linewidth 1 pointtype 3  pointsize 1.5
set style line 7910 linecolor rgb 'green' linetype 1 linewidth 1 pointtype 8  pointsize 1.5
set style line 5010 linecolor rgb 'black' linetype 4 linewidth 1.5 pointtype 7 pointsize 1
set style line 6000 linecolor rgb 'red' linetype 6 linewidth 1.5 pointtype 7 pointsize 1

set style line 680 linecolor rgb 'magenta' linetype 4 linewidth 1.5 pointtype 7 pointsize 1
set style line 681 linecolor rgb 'red' linetype 4 linewidth 1.5 pointtype 7 pointsize 1
set style line 682 linecolor rgb 'green' linetype 4 linewidth 1.5 pointtype 7 pointsize 1
set style line 683 linecolor rgb 'blue' linetype 4 linewidth 1.5 pointtype 7 pointsize 1
set style line 684 linecolor rgb 'black' linetype 4 linewidth 1.5 pointtype 7 pointsize 1
set style line 685 linecolor rgb 'red' linetype 4 linewidth 1.5 pointtype 7 pointsize 1

# for expt symbols solid
set style line 900 linecolor rgb 'grey' linetype 1 linewidth 1 pointtype 9  pointsize 1.5
set style line 901 linecolor rgb 'green' linetype 1 linewidth 1 pointtype 11  pointsize 1.5
set style line 902 linecolor rgb 'magenta' linetype 1 linewidth 1 pointtype 13  pointsize 1.5
set style line 903 linecolor rgb 'black' linetype 1 linewidth 1 pointtype 15  pointsize 1.5
set style line 904 linecolor rgb 'brown' linetype 1 linewidth 1 pointtype 2 pointsize 1.5	#1200, 338
set style line 905 linecolor rgb 'brown' linetype 1 linewidth 1 pointtype 4 pointsize 1.5	#1200, 313
set style line 906 linecolor rgb 'brown' linetype 1 linewidth 1 pointtype 6 pointsize 1.5	#1200, 293

# new for relative.volume
set style line 7575 linecolor rgb 'red' linetype 1 linewidth 1 pointtype 7 pointsize 1.5

# for plotting Eyring vs. Carreau symbols on same plot
set style line 999 linecolor rgb 'red' linetype 6 linewidth 1.5 pointtype 1 pointsize 1.5
set style line 998 linecolor rgb 'black' linetype 6 linewidth 1.5 pointtype 2 pointsize 1.5

set style line 4817 linecolor rgb 'black' linetype 1 linewidth 1 pointtype 6 pointsize 1.5	#293
set style line 4818 linecolor rgb 'magenta' linetype 1 linewidth 1 pointtype 6 pointsize 1.5	#293
set style line 4819 linecolor rgb 'orange' linetype 1 linewidth 1 pointtype 6 pointsize 1.5	#293
set style line 4820 linecolor rgb 'brown' linetype 1 linewidth 1 pointtype 6 pointsize 1.5	#293
set style line 4821 linecolor rgb 'red' linetype 1 linewidth 1 pointtype 3 pointsize 1.5	#273
set style line 4822 linecolor rgb 'green' linetype 1 linewidth 1 pointtype 2 pointsize 1.5	#373, 800

set style line 4824 linecolor rgb 'cyan' linetype 1 linewidth 1 pointtype 6 pointsize 1.5	#293, 636

set tics nomirror

set fit quiet

converttoMPa=0.10132
kenergytoMPa=0.137
MPatoPa=1000000
mPatoPa=0.001

kBoltz=1.38e-23
JtoeV=6.24e18

# densitites simulated
rho01=0.819
rho1=0.867
rho2=0.900
rho3=0.923
rho4=0.942
rho5=0.960
rho6=0.979
rho7=0.999
rho8=1.0076
rho9=1.0158
rho12=1.03745
rho14=1.05287
rho16=1.06715
rho18=1.08011
rho20=1.09249
rho22=1.10307
rho30=1.14291
rho60=1.2469
rho90=1.32
rho120=1.37818

## Newtonian (low rate experiment values)
g01(x)=0.0000000359*x
g1(x)=0.00000026*x
g2(x)=0.000001429*x
g3(x)=0.00000567*x
g4(x)=0.0000204*x
g5(x)=0.0000676*x
g6(x)=0.00036*x
g7(x)=0.0026*x
g8(x)=0.006*x
g9(x)=0.0145*x

expta01=0.0000000359
expta1=0.00000026
expta2=0.000001429
expta3=0.00000567
expta4=0.0000204
expta5=0.0000676
expta6=0.00036
expta7=0.0026	
expta8=0.006
expta9=0.0145	# MPa
T313a01=0.0113e-6
exptT313a8=225/MPatoPa
exptT338a8=25.9/MPatoPa
exptT273a01=0.117/MPatoPa

## sim etaN
sima01=3.09e-8
sima1= 2e-7
sima2=1.04e-6
sima3=4.54e-6
sima4=1.71e-5
#sima5=6.45e-5
sima5=7.18e-5

simT313a01 = 1.62e-2/MPatoPa
simT313a3 = 0.89/MPatoPa
simT338a3 = 0.258/MPatoPa

simT250a01 = 0.529/MPatoPa

# Just Eyring

f01(x)=e01*asinh(a01*x/e01)
f1(x)=e1*asinh(a1*x/e1)
f2(x)=e2*asinh(a2*x/e2)
f3(x)=e3*asinh(a3*x/e3)
f4(x)=e4*asinh(a4*x/e4)
f5(x)=e5*asinh(a5*x/e5)
f6(x)=e6*asinh(a6*x/e6)
f7(x)=e7*asinh(a7*x/e7)
f8(x)=e8*asinh(a8*x/e8)
f9(x)=e9*asinh(a9*x/e9)

etaf2(x)=MPatoPa*s2*asinh(n2*x/(MPatoPa*s2))/x
etaf3(x)=MPatoPa*s3*asinh(n3*x/(MPatoPa*s3))/x
etaf4(x)=MPatoPa*s4*asinh(n4*x/(MPatoPa*s4))/x
etaf5(x)=MPatoPa*s5*asinh(n5*x/(MPatoPa*s5))/x
etaf6(x)=MPatoPa*s6*asinh(n6*x/(MPatoPa*s6))/x
etaf7(x)=MPatoPa*s7*asinh(n7*x/(MPatoPa*s7))/x
etaf8(x)=MPatoPa*s8*asinh(n8*x/(MPatoPa*s8))/x
etaf9(x)=MPatoPa*s9*asinh(n9*x/(MPatoPa*s9))/x

# stress, viscosity vs. pressure; fitting eyring against pressure for a fixed T = 293 K

a01 = 15.4/MPatoPa
e01=9.0
fit [1e6:1e9] f01(x) 'benchmark_jhu_data/P0.1MPa/stress.rate.out' u 1:(converttoMPa*$2) via a01, e01

a1 = 15.4/MPatoPa
e1=9.0
fit [1e6:1e9] f1(x) 'benchmark_jhu_data/P100MPa/stress.rate.out' u 1:(converttoMPa*$2) via a1, e1

a2 = sima2
e2=9.0
fit [1e6:1e9] f2(x) 'benchmark_jhu_data/P200MPa/stress.rate.out' u 1:(converttoMPa*$2) via e2#, e2

#a3 = 15.4/MPatoPa
a3 = sima3
e3=9.0
fit [1e6:1e9] f3(x) 'benchmark_jhu_data/P300MPa/stress.rate.out' u 1:(converttoMPa*$2) via e3#, e3

#a4 = 15.4/MPatoPa
a4 = sima4
e4=9.32
fit [1e6:1e9] f4(x) 'benchmark_jhu_data/P400MPa/stress.rate.out' u 1:(converttoMPa*$2) via e4#, e4

#a5 = 67.6/MPatoPa
#e5=9.2
#fit [1e6:1e9] f5(x) 'new.T293K/P500MPa/new.stress.rate.out' u 1:(converttoMPa*$3) via a5, e5

#a6 = 2542.0/MPatoPa
#e6=9.32
#fit [1e6:1e9] f6(x) 'new.T293K/P636MPa/new.stress.rate.out' u 2:(converttoMPa*$3) via a6, e6

#a7 = 2600.0/MPatoPa
#e7=9.32
#fit [1e6:1e9] f7(x) 'new.T293K/P796MPa/new.stress.rate.out' u 2:(converttoMPa*$3) via a7, e7
#print "293	796 ", a7*MPatoPa, "   ", e7  

#a8 = 0.1
#e8=9.32
#fit [1e6:1e9] f8(x) 'new.T293K/P875MPa/new.stress.rate.out' u 2:(converttoMPa*$3) via a8, e8

#a9 = 0.1
#e9=9.32
#fit [1e6:1e9] f9(x) 'new.T293K/P955MPa/new.stress.rate.out' u 2:(converttoMPa*$3) via a9, e9

##a12=0.1
##e12=9.3
##fit [1e6:1e9] f12(x) 'benchmark_jhu_data/P1200MPa/stress.rate.out' u (($2)):(converttoMPa*$3) via a12, e12
##print "293, 1200 ", a12*MPatoPa, "   ", e12  

#a16=0.1
#e16=9.32
#fit [1e6:1e9] f16(x) 'new.T293K/P1600MPa/new.stress.rate.out' u (($2)):(converttoMPa*$3) via a16, e16

##a20=0.1
##e20=10.06
##fit [1e6:1e9] f20(x) 'benchmark_jhu_data/P2000MPa/stress.rate.out' u (($2)):(converttoMPa*$3) via a20, e20

print "at 293K"
print "Eyring Fits"
print rho2, "   ", "200   ", a2*MPatoPa, "   ", e2
print rho3, "   ", "300   ", a3*MPatoPa, "   ", e3
print rho4, "   ", "400   ", a4*MPatoPa, "   ", e4
#print rho5, "   ", "500   ", a5*MPatoPa, "   ", e5
#print rho6, "   ", "636   ", a6*MPatoPa, "   ", e6
#print rho7, "   ", "796   ", a7*MPatoPa, "   ", e7
#print rho8, "   ", "875   ", a8*MPatoPa, "   ", e8
#print rho9, "   ", "955   ", a9*MPatoPa, "   ", e9

set style line 3000 linecolor rgb 'magenta' linetype 1 linewidth 1 pointtype 8  pointsize 1.5 	#1200
set style line 3010 linecolor rgb 'black' linetype 1 linewidth 1 pointtype 1  pointsize 1.5 	#0.95
set style line 3020 linecolor rgb 'gray' linetype 1 linewidth 1 pointtype 2  pointsize 1.5 	#0.9
set style line 3030 linecolor rgb 'blue' linetype 1 linewidth 1 pointtype 3  pointsize 1.5 	#1.05

########## TRIBOLOGY LETTER FIGURES ############

print "**************** T 293 K *********************"
#a5 = 67.6/MPatoPa
a5 = sima5
e5=9.32
fit [1e1:1e9] f5(x) 'benchmark_jhu_data/P500MPa/stress.rate.out' u 1:(converttoMPa*$2) via e5#, e5
print "500 ", a5*MPatoPa, "   ", e5

#a6 = 2542.0/MPatoPa
a6 = expta6
e6=9.3
fit [1e1:1e9] f6(x) 'benchmark_jhu_data/P636MPa/all.stress.rate.out' u 1:(converttoMPa*$2) via e6#, a6
print "636 ", a6*MPatoPa, "   ", e6

#a7 = 2600.0/MPatoPa
a7 = expta7
e7=9.3
fit [1e1:1e9] f7(x) 'benchmark_jhu_data/P796MPa/all.stress.rate.out' u 1:(converttoMPa*$2) via e7#, a7
print "796 ", a7*MPatoPa, "   ", e7  

#a8 = 0.1
a8 = expta8
e8=9.3
fit [1e1:1e9] f8(x) 'benchmark_jhu_data/P875MPa/all.stress.rate.out' u 1:(converttoMPa*$2) via e8#, a8
print "875 ", a8*MPatoPa, "   ", e8

#a9 = 0.1
a9 = expta9
e9=9.3
fit [1e1:1e9] f9(x) 'benchmark_jhu_data/P955MPa/all.stress.rate.out' u 1:(converttoMPa*$2) via e9#, a9
print "955 ", a9*MPatoPa, "   ", e9

#e6=9.3
#e7=9.3
#e8=9.3
#e9=9.3
#f6(x)=e6*asinh(a6*x/e6)
#f7(x)=e7*asinh(a7*x/e7)
#f8(x)=e8*asinh(a8*x/e8)
#f9(x)=e9*asinh(a9*x/e9)

print "**************** sims Carreau *********************"
print "all rate carreau fits to simulations at low P"

exptT313a01 = 0.0157/MPatoPa
exptT313a3 = 1.39/MPatoPa
exptT338a3 = 0.319/MPatoPa
exptT273a01 = 0.1175/MPatoPa

q01(x)=u01*x/((1+(u01*x/d01)**2)**(0.5*(1-cn01)))
q1(x)=u1*x/((1+(u1*x/d1)**2)**(0.5*(1-cn1)))
q2(x)=u2*x/((1+(u2*x/abs(d2))**2)**(0.5*(1-cn2)))
q3(x)=u3*x/((1+(u3*x/abs(d3))**2)**(0.5*(1-cn3)))

T313q01(x)=T313u01*x/((1+(T313u01*x/T313d01)**2)**(0.5*(1-T313cn01)))
T313q3(x)=T313u3*x/((1+(T313u3*x/T313d3)**2)**(0.5*(1-T313cn3)))
T338q3(x)=T338u3*x/((1+(T338u3*x/T338d3)**2)**(0.5*(1-T338cn3)))
T373q3(x)=T373u3*x/((1+(T373u3*x/T373d3)**2)**(0.5*(1-T373cn3)))
T273q01(x)=T273u01*x/((1+(T273u01*x/T273d01)**2)**(0.5*(1-T273cn01)))
T250q01(x)=T250u01*x/((1+(T250u01*x/T250d01)**2)**(0.5*(1-T250cn01)))
T313q3(x)=T313u3*x/((1+(T313u3*x/T313d3)**2)**(0.5*(1-T313cn3)))
T293q4(x)=T293u4*x/((1+(T293u4*x/T293d4)**2)**(0.5*(1-T293cn4)))

u01 = sima01
d01 = 5 #10
cn01 = 0.3 #0.5
fit [1e6:1e10] q01(x) 'benchmark_jhu_data/P0.1MPa/stress.rate.out' u 1:(converttoMPa*$2) via d01, cn01#, u01
print "carreau 0.1 ", u01*MPatoPa, "  ", d01, "  ", cn01

u1 = sima1
d1 = 5
cn1 = 0.3
fit [1e6:1e10] q1(x) 'benchmark_jhu_data/P100MPa/stress.rate.out' u 1:(converttoMPa*$2) via d1, cn1#, u1
print "carreau 100 ", u1*MPatoPa, "  ", d1, "  ", cn1

u2 = sima2
d2 = 5
cn2 = 0.3
fit [1e6:1e10] q2(x) 'benchmark_jhu_data/P200MPa/stress.rate.out' u 1:(converttoMPa*$2) via d2, cn2#, u2
print "carreau 200 ", u2*MPatoPa, "  ", d2, "  ", cn2

u3 = 1
d3 = 5
cn3 = 0.3
fit [1e6:1e10] q3(x) 'benchmark_jhu_data/P300MPa/stress.rate.out' u 1:(converttoMPa*$2) via d3, cn3, u3
print "carreau 300 ", u3*MPatoPa, "  ", d3, "  ", cn3

T293u4 = 1
T293d4 = 9.3
T293cn4 = 0.5
fit [1e5:5e8] T293q4(x) 'benchmark_jhu_data/P400MPa/stress.rate.out' u 1:(converttoMPa*$2) via T293d4, T293cn4, T293u4
print "carreau 293 400 ", T293u4*MPatoPa, "  ", T293d4, "  ", T293cn4

##########################

set autoscale x
set autoscale y
set output 'figures/tl-fig-atT293K-shearstress-rate.eps'
set logscale x
set key vertical width 2 maxrows 6
set key at 1e4,165
set key samplen 2
set key spacing 3
set key font 'Helvetica, 18'
set format x "10^{%T}"
set format y
set xtics font "Helvetica, 18"
set ytics font "Helvetica, 18"
set xtics offset 0,0
set ytics offset 0,0
set xlabel 'strain rate (s^{-1})' font 'Helvetica,20'
set ylabel 'steady-state shear stress (MPa)' font 'Helvetica,20'
set xlabel offset 0,0
set ylabel offset 0,0
set label 1 "P (MPa)" at graph 0.14, 0.95 font 'Helvetica, 18'
set yrange [0:180]
set xrange [:1.5e10]
#set arrow 4 from 2e4,42 to 2e3,42 ls 57
#set arrow 41 from 2e4,40 to 2e4,44 nohead ls 57
#set arrow 5 from 1e5,87 to 2e6,87 ls 57
#set arrow 51 from 1e5,85 to 1e5,89 nohead ls 57
#set label 2 "experiments" at graph 0.2, 0.28 font 'Helvetica, 18'
#set label 3 "simulations" at graph 0.435, 0.535 font 'Helvetica, 18'
set label 5 "Eyring fit" at graph 0.4, 0.95 font 'Helvetica, 18'
set label 7 "Carreau fit" at graph 0.4, 0.89 font 'Helvetica, 18'
set arrow 6 from 1e6,171 to 1e7,171 ls 58 nohead
set arrow 8 from 1e6,160 to 1e7,160 ls 501 nohead
plot \
'benchmark_jhu_data/P0.1MPa/stress.rate.out' u 1:(converttoMPa*$2) every 1 t '{0.1}' with p ls 70, \
'benchmark_jhu_data/P100MPa/stress.rate.out' u 1:(converttoMPa*$2) every 1 t '{100}' with p ls 71, \
'benchmark_jhu_data/P200MPa/stress.rate.out' u 1:(converttoMPa*$2) every 1 t '{200}' with p ls 72, \
'benchmark_jhu_data/P300MPa/stress.rate.out' u 1:(converttoMPa*$2) every 1 t '{300}' with p ls 73, \
'benchmark_jhu_data/P400MPa/stress.rate.out' u 1:(converttoMPa*$2) every 1 t '{400}' with p ls 74, \
'benchmark_jhu_data/P500MPa/stress.rate.out' u 1:(converttoMPa*$2) every 1 t '{500}' with p ls 75, \
'benchmark_jhu_data/P636MPa/stress.rate.out' u 1:(converttoMPa*$2) every 1 t '{636}' with p ls 76, \
'benchmark_jhu_data/P796MPa/stress.rate.out' u 1:(converttoMPa*$2) every 1 t '{796}' with p ls 77, \
'benchmark_jhu_data/P875MPa/stress.rate.out' u 1:(converttoMPa*$2) every 1 t '{875}' with p ls 78, \
'benchmark_jhu_data/P955MPa/stress.rate.out' u 1:(converttoMPa*$2) every 1 t '{955}' with p ls 79, \
'benchmark_jhu_data/P636MPa/expt.out' u 1:(($2*converttoMPa)) notitle with p ls 76, \
'benchmark_jhu_data/P796MPa/expt.out' u 1:(($2*converttoMPa)) notitle with p ls 77, \
'benchmark_jhu_data/P875MPa/expt.out' u 1:(($2*converttoMPa)) notitle with p ls 78, \
'benchmark_jhu_data/P955MPa/expt.out' u 1:(($2*converttoMPa)) notitle with p ls 79, \
f2(x) ls 58 notitle, \
f3(x) ls 58 notitle, \
f4(x) ls 58 notitle, \
f5(x) ls 58 notitle, \
f6(x) ls 58 notitle, \
f7(x) ls 58 notitle, \
f8(x) ls 58 notitle, \
f9(x) ls 58 notitle, \
q01(x) ls 501 notitle, \
q1(x) ls 501 notitle , \
q2(x) ls 501 notitle
unset label 1
unset label 5
unset arrow 6
unset label 7
unset arrow 8

set output 'figures/tl-fig-atT293K-viscosity-rate.eps'
set autoscale x
set autoscale y
unset logscale x
unset logscale y
set logscale x
set logscale y
set key vertical width 2 maxrows 6
set key at 1e10,5.5e3
set key samplen 1
set key spacing 3.5
set key font 'Helvetica, 18'
set format x "10^{%T}"
set format y "10^{%T}"
set xtics font "Helvetica, 18"
set ytics font "Helvetica, 18"
set xtics offset 0,0
set ytics offset 0,0
set xlabel 'strain rate (s^{-1})' font 'Helvetica,20'
set ylabel 'viscosity (Pa.s)' font 'Helvetica,20'
set xlabel offset 0,0
set ylabel offset 0,0
set label 2 "experiments" at graph 0.07, 0.1 font 'Helvetica, 18'
set label 3 "simulations" at graph 0.58, 0.1 font 'Helvetica, 18'
set label 5 "Eyring fit" at graph 0.42, 0.96 font 'Helvetica, 18'
set label 7 "Carreau fit" at graph 0.42, 0.9 font 'Helvetica, 18'
set arrow 6 from 1.5e6,9e4 to 1e7,9e4 ls 58 nohead
set arrow 8 from 1.5e6,3e4 to 1e7,3e4 ls 501 nohead
set label 1 "P (MPa)" at graph 0.83, 0.85 font 'Helvetica, 18'
set label 4 "293 K" at graph 0.9, 0.95 font 'Helvetica, 18'
set yrange [2e-3:2e5]
set xrange [:1.5e10]
set arrow 1 from 50,0.0359 to 50000000,0.0359 nohead ls 680
set arrow 2 from 50,0.26 to 20000000,0.26 nohead ls 681
set arrow 3 from 50,1.429 to 2000000,1.429 nohead ls 682
set arrow 31 from 50,5.67 to 1000000,5.67 nohead ls 683
set arrow 32 from 50,20.4 to 500000,20.4 nohead ls 684
set arrow 33 from 50,67.6 to 100000,67.6 nohead ls 685
set arrow 4 from 2e4,0.01 to 2e3,0.01 ls 57
set arrow 41 from 2e4,0.008 to 2e4,0.012 nohead ls 57
set arrow 5 from 1e5,0.01 to 1e6,0.01 ls 57
set arrow 51 from 1e5,0.008 to 1e5,0.012 nohead ls 57
plot \
'benchmark_jhu_data/P0.1MPa/stress.rate.out' u 1:(MPatoPa*abs($2*converttoMPa)/$1) every 1 t '0.1' with p ls 70, \
'benchmark_jhu_data/P100MPa/stress.rate.out' u 1:(MPatoPa*abs($2*converttoMPa)/$1) every 1 t '100' with p ls 71, \
'benchmark_jhu_data/P200MPa/stress.rate.out' u 1:(MPatoPa*abs($2*converttoMPa)/$1) every 1 t '200' with p ls 72, \
'benchmark_jhu_data/P300MPa/stress.rate.out' u 1:(MPatoPa*abs($2*converttoMPa)/$1) every 1 t '300' with p ls 73, \
'benchmark_jhu_data/P400MPa/stress.rate.out' u 1:(MPatoPa*abs($2*converttoMPa)/$1) every 1 t '400' with p ls 74, \
'benchmark_jhu_data/P500MPa/stress.rate.out' u 1:(MPatoPa*abs($2*converttoMPa)/$1) every 1 t '500' with p ls 75, \
'benchmark_jhu_data/P636MPa/stress.rate.out' u 1:(MPatoPa*abs($2*converttoMPa)/$1) every 1 t '636' with p ls 76, \
'benchmark_jhu_data/P796MPa/stress.rate.out' u 1:(MPatoPa*abs($2*converttoMPa)/$1) every 1 t '796' with p ls 77, \
'benchmark_jhu_data/P875MPa/stress.rate.out' u 1:(MPatoPa*abs($2*converttoMPa)/$1) every 1 t '875' with p ls 78, \
'benchmark_jhu_data/P955MPa/stress.rate.out' u 1:(MPatoPa*abs($2*converttoMPa)/$1) every 1 t '955' with p ls 79, \
'benchmark_jhu_data/P636MPa/expt.out' u 1:(MPatoPa*abs($2*converttoMPa)/$1) notitle with p ls 76, \
'benchmark_jhu_data/P796MPa/expt.out' u 1:(MPatoPa*abs($2*converttoMPa)/$1) notitle with p ls 77, \
'benchmark_jhu_data/P875MPa/expt.out' u 1:(MPatoPa*abs($2*converttoMPa)/$1) notitle with p ls 78, \
'benchmark_jhu_data/P955MPa/expt.out' u 1:(MPatoPa*abs($2*converttoMPa)/$1) notitle with p ls 79, \
MPatoPa*(1/x)*abs(f2(x)) ls 58 notitle, \
MPatoPa*(1/x)*abs(f3(x)) ls 58 notitle, \
MPatoPa*(1/x)*abs(f4(x)) ls 58 notitle, \
MPatoPa*(1/x)*abs(f5(x)) ls 58 notitle, \
MPatoPa*(1/x)*abs(f6(x)) ls 58 notitle, \
MPatoPa*(1/x)*abs(f7(x)) ls 58 notitle, \
MPatoPa*(1/x)*abs(f8(x)) ls 58 notitle, \
MPatoPa*(1/x)*abs(f9(x)) ls 58 notitle, \
MPatoPa*(1/x)*q01(x) notitle ls 501, \
MPatoPa*(1/x)*q1(x) notitle ls 501, \
MPatoPa*(1/x)*q2(x) notitle ls 501

unset arrow 1
unset arrow 2
unset arrow 3
unset arrow 4
unset arrow 5
unset arrow 6
unset arrow 8
unset arrow 31
unset arrow 32
unset arrow 33
unset arrow 41
unset arrow 51
unset label 1
unset label 2 
unset label 3
unset label 4
unset label 5
unset label 7

set autoscale x
set autoscale y
set output 'figures/tl-fig-atT293K-orderparameter-rate.eps'
unset logscale x
unset logscale y
set logscale x
set key vertical width 1 maxrows 10
set key at 8e9,0.18
set key samplen 2
set key spacing 3
set key font 'Helvetica, 16'
unset key
set xtics font "Helvetica, 18"
set ytics font "Helvetica, 18"
set xtics offset 0,0
set ytics offset 0,0
set xlabel 'strain rate (s^{-1})' font 'Helvetica,20'
set ylabel 'order parameter' font 'Helvetica,20'
set xlabel offset 0,0
set ylabel offset 0,0
set label 1 "T = 293 K" font 'Helvetica, 18' at graph 0.02,0.96
set label 4 "P (MPa)" font 'Helvetica, 18' at graph 0.79,0.62
set label 2 "S_{xx}" font 'Helvetica, 18' at graph 0.05,0.6
set label 3 "S_{yy}" font 'Helvetica, 18' at graph 0.05,0.25
unset label 4
unset label 1
set xrange [8e4:1.2e10]
set format x "10^{%T}"
set format y 
plot \
'benchmark_jhu_data/P0.1MPa/stensor.rate.out' u 1:2 w lp t '0.1' ls 70, \
'benchmark_jhu_data/P0.1MPa/stensor.rate.out' u 1:4 w lp notitle ls 70, \
'benchmark_jhu_data/P100MPa/stensor.rate.out' u 1:2 w lp t '100' ls 71, \
'benchmark_jhu_data/P100MPa/stensor.rate.out' u 1:4 w lp notitle  ls 71, \
'benchmark_jhu_data/P200MPa/stensor.rate.out' u 1:2 w lp t '200' ls 72, \
'benchmark_jhu_data/P200MPa/stensor.rate.out' u 1:4 w lp notitle  ls 72, \
'benchmark_jhu_data/P300MPa/stensor.rate.out' u 1:2 w lp t '300' ls 73, \
'benchmark_jhu_data/P300MPa/stensor.rate.out' u 1:4 w lp notitle  ls 73, \
'benchmark_jhu_data/P400MPa/stensor.rate.out' u 1:2 w lp t '400' ls 74, \
'benchmark_jhu_data/P400MPa/stensor.rate.out' u 1:4 w lp notitle  ls 74, \
'benchmark_jhu_data/P500MPa/stensor.rate.out' u 1:2 w lp t '500' ls 75, \
'benchmark_jhu_data/P500MPa/stensor.rate.out' u 1:4 w lp notitle  ls 75, \
'benchmark_jhu_data/P636MPa/stensor.rate.out' u 1:2 w lp t '636' ls 76, \
'benchmark_jhu_data/P636MPa/stensor.rate.out' u 1:4 w lp notitle  ls 76, \
'benchmark_jhu_data/P796MPa/stensor.rate.out' u 1:2 w lp t '796' ls 77, \
'benchmark_jhu_data/P796MPa/stensor.rate.out' u 1:4 w lp notitle  ls 77, \
'benchmark_jhu_data/P875MPa/stensor.rate.out' u 1:2 w lp t '875' ls 78, \
'benchmark_jhu_data/P875MPa/stensor.rate.out' u 1:4 w lp notitle  ls 78, \
'benchmark_jhu_data/P955MPa/stensor.rate.out' u 1:2 w lp t '955' ls 79, \
'benchmark_jhu_data/P955MPa/stensor.rate.out' u 1:4 w lp notitle  ls 79

unset label 1
unset label 2
unset label 3
unset label 4

unset logscale x