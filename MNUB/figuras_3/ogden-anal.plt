#!/opt/local/bin/gnuplot -persist
# set terminal x11  nopersist enhanced
# set output
GNUTERM = "x11"
set key center top
ch1 = 6.58
m1 = 6.83
c1 = ch1/m1
s(lambda)=c1*(lambda**m1-lambda**(-m1/2))
set xlabel 'Nominal strain ({/Symbol l}-1)'
set ylabel 'Stress {/Symbol s} [kPa]'
set title 'Uniaxial tensile text - Ogden incompressible model'
set grid
plot [u=0:1.5] \
               s(1+u) lw 2 notitle \

set term post eps enha color solid lw 2 20
set output 'ogden-anal.eps'
replot
#    EOF
