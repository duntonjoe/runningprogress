#!/usr/bin/gnuplot -persist
set title "Mile Time Progress"
set xdata time
set timefmt "%m/%d/%Y"
set format x "%m/%d"
set yrange ["10.00":"15.00"]
set xlabel "Days"
set ylabel "Pace (minutes)"
set mytics 4
set xtics 7*24*60*60
set grid xtics mytics ytics
f(x) = mean_y
fit f(x) 'mileTimes.dat' u 1:2 via mean_y
set label 1 sprintf("AVG = %f",mean_y) at graph 0.4,0.15
plot 'mileTimes.dat' using 1:2 t "My Mile Times" with linespoints
