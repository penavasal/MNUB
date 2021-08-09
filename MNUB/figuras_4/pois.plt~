#!/opt/local/bin/gnuplot -persist
# set terminal x11  nopersist enhanced
# set output
set grid
set xlabel "r (cm)" 
set ylabel "v (cm/s)" 
pois(x)=dp/(4*L*eta)*(R**2-x**2)
dp = 192
L = 2
eta = 0.04
R = 0.2
plot [x=-0.2:0.2] pois(x) w l lw 3 t 'Poiseuille'\
                ,'pois-vout.dat' w lp lw 3 t 'FEBiO c'\
                ,'poisp-vout.dat' w lp lw 3 t 'FEBiO p'\
#               ,'pois.dat' w lp lw 3 t 'FEBiO 0'\
#               ,'pois1.dat' w lp lw 3 t 'FEBiO 1'\
#               ,'pois2.dat' w lp lw 3 t 'FEBiO 2'\
#               ,'pois3.dat' w lp lw 3 t 'FEBiO 3'\
#               ,'pois4.dat' w lp lw 3 t 'FEBiO 4'\
#               ,'pois6.dat' w lp lw 3 t 'FEBiO 6'\

set term post eps enha color solid lw 2 20
set output 'pois-vr_comp.eps'
replot

#    EOF
