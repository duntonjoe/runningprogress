# runningprogress

These scripts allow me to track my running pace, and hopefully view it improving.


mileTimes.dat:
-------------
	This file includes each day i've ran, along with my time. The time is formated at integer minutes.


gnuplotTimes.sh:
---------------
	Requires: gnuplot

	This script pulls all lines from mileTimes.dat, it then uses gnuplot to create a nice line graph
	of my times. Ideally this graph should have a negative slope over time.


termgraphTimes.sh:
------------------
	Requires: toilet, termgraph, python3, lolcat

	This script creates a bar graph of mileTimes.bat within the terminal.
	lolcat and toilet are used to make a visually interesting title for the graph.
