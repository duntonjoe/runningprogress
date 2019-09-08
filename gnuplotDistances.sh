#!/usr/bin/gnuplot -persist
set title "Total Workout Distance"
set xdata time
set timefmt "%m/%d/%Y"
set format x "%m/%d"
set yrange ["0.00":"10.00"]
set xlabel "Days"
set ylabel "Distance (Miles)"
set mytics 8
set xtics 2*7*24*60*60
set grid xtics mytics ytics
f(x) = mean_r
g(x) = mean_b
fit f(x) 'fitnessData.dat' u 1:3 via mean_r
fit g(x) 'fitnessData.dat' u 1:4 via mean_b
set label 1 sprintf("AVG RUN DIST = %f",mean_r) at graph 0.05,0.95
set label 2 sprintf("AVG BIKE DIST = %f",mean_b) at graph 0.05,0.90
plot 'fitnessData.dat' using 1:3 t "Distance Ran" with linespoint, \
	'fitnessData.dat' using 1:4 t "Distance Biked" with linespoint, \
	'fitnessData.dat' using 1:($3+$4) t "Total Distance" with lines dt 4
