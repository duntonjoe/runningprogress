#!/usr/bin/gnuplot -persist
set title "Mile Time Progress"
set xdata time
set timefmt "%m/%d/%Y"
set format x "%m/%d"
set yrange ["10.00":"15.00"]
set xlabel "Days"
set ylabel "Pace (minutes)"
set mytics 4
set grid xtics mytics ytics
set xtics 24*60*60
plot 'mileTimes.dat' using 1:2 t "My Mile Times" with linespoints
