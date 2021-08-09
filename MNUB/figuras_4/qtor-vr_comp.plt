#!/opt/local/bin/gnuplot -persist
# set terminal x11  nopersist enhanced
# set output
set grid
set xlabel "r (cm)" 
set ylabel "v (cm/s)" 
set key left
pois(x)=dp/(4*L*eta)*(R**2-x**2)
dp = 192
L = 2
eta = 0.04
R = 0.2
plot [x=-0.2:0.2] pois(x) w l lw 3 t 'Poiseuille'\
                ,'qtor-vin25.dat' u ($1+1.273):2 w lp lw 3 t 'FEBiO in '\
                ,'qtor-vout25.dat' u ($1-1.273):2 w lp lw 3 t 'FEBiO out'\

set term post eps enha color solid lw 2 20
set output 'qtor-vr_comp.eps'
replot

#    EOF
