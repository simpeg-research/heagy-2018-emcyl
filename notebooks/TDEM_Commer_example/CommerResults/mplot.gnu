# Gnuplot script for plotting CM2 results Fe Fd comparison
set terminal postscript portrait enhanced color solid "Helvetica" 12
set out "CM2_FEFD.ps"

unset logscale
set style data lines
set size 1.0,1.0; set origin 0,0


set multiplot

# model plot
#unset key
set key bottom right
set yr[250:0]
set xr[-100:350]
set size 0.8,0.3
set origin 0.1,0.71
set xl "x (m)" offset 0,0.6
set yl "Depth (m)" offset 1,0
set title "a) Transmitter - receiver layout"
set label "Casing" at 15,100 rotate by -90
plot "txrx.dat" index 0 w l lt -1 lw 1 ti "", \
"txrx.dat" index 1 w l lt 2 lw 5 ti "", \
"txrx.dat" index 1 w l lt 9 lw 3 ti "", \
"txrx.dat" index 2 w lp lt 3 lw 3 pt 7 ps 1 ti "Tx", \
"txrx.dat" index 3 w p lt 1 pt 11 ps 1.25 ti "Rx"


unset label
set logscale
#
# data transients
#
set grid
set key top right
set auto
set size 1.01,0.35
set origin -0.07,0.36

set xr [2e-4:0.2]
set yr [2e-10:2e-4]
set xl "Time (sec)" offset 0,0.6
set yl "E (V/m)" offset 2.75,0
# RX at (5,0,0)   index=0
# RX at (11,0,0)  index=1
# RX at (51,0,0)  index=2
# RX at (101,0,0) index=3
# RX at (151,0,0) index=4
# RX at (201,0,0) index=5
# RX at (251,0,0) index=6
# RX at (301,0,0) index=7

set label "x=5 m" at  4e-4,8.5e-5  rotate by -35
set label "x=11 m" at 2.5e-4,1.75e-5 rotate by -30
set label "x=101 m" at 3.35e-4,1.5e-7
set label "x=201 m" at 2.85e-4,6.0e-8
set label "x=301 m" at 2.35e-4,2.5e-8

set arrow from 3.35e-4,1.5e-7 to 3.35e-4,2.4e-6 ls 9
set arrow from 2.85e-4,6.0e-8 to 2.85e-4,1.66e-6 ls 9
set arrow from 2.35e-4,2.5e-8 to 2.35e-4,7.8e-7 ls 9

set title "b) HED-transmitter, E_x-field comparison between FE and FDTD solution"
plot \
"fefd.data" index 0 u 1:(abs($2)) lt 7 lw 1.5 ti "FE", \
"fefd.data" index 0 u 1:(abs($3)) lt 1 lw 1.5 ti "FD", \
"fefd.data" index 1 u 1:(abs($2)) lt 7 lw 1.5 ti "", \
"fefd.data" index 1 u 1:(abs($3)) lt 1 lw 1.5 ti "", \
"fefd.data" index 3 u 1:(abs($2)) lt 7 lw 1.5 ti "", \
"fefd.data" index 3 u 1:(abs($3)) lt 1 lw 1.5 ti "", \
"fefd.data" index 5 u 1:(abs($2)) lt 7 lw 1.5 ti "", \
"fefd.data" index 5 u 1:(abs($3)) lt 1 lw 1.5 ti "", \
"fefd.data" index 7 u 1:(abs($2)) lt 7 lw 1.5 ti "", \
"fefd.data" index 7 u 1:(abs($3)) lt 1 lw 1.5 ti ""

set size 0.935,0.35
set origin 0.005,0.01
unset logscale y
unset label
set yr[0:50]
set title "c) HED-transmitter, Electric field difference {/Symbol D}E_x" offset 0,-0.6
set ylabel "Difference {/Symbol D} (%)" offset 0,0
plot \
"fefd.data" index 0 u 1:4 lt 7 lw 1.5 ti "x=5 m", \
"fefd.data" index 1 u 1:4 lt 1 lw 1.5 ti "x=11 m", \
"fefd.data" index 3 u 1:4 lt 3 lw 1.5 ti "x=101 m", \
"fefd.data" index 5 u 1:4 lt 4 lw 1.5 ti "x=201 m", \
"fefd.data" index 7 u 1:4 lt 2 lw 1.5 ti "x=301 m"

unset multiplot
