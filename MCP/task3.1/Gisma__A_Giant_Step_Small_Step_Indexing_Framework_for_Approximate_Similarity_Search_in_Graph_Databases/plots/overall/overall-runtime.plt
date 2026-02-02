unset grid
unset label
#set grid ytics
set style data histogram
set style fill solid 1 border -1
#set style fill solid 1 border -1
set style histogram clustered gap 1
set boxwidth 1 absolute
#set key off
set key top left
set term postscript enhanced
set term post eps color solid enh
set bmargin 6
set lmargin 14.5
set rmargin 0
set tmargin 1.5
show margin
set size 1.4,1

#set y2label 'percentage (%)' offset 0,0
#set y2label font "Helvetica, 30"
set ytics nomirror
set ylabel 'runtime (seconds)' offset -7,0
set ylabel font "Helvetica, 50"
#set logscale y 10
#set yrange [1: 18000]
#set ytics ('1' 1, '10^1' 10, '10^2' 100, '10^3' 1000, '10^4' 10000) offset 0,0
#set yrange [0: 5]
#set ytics ('1' 1, '2' 2, '3' 3, '4' 4, '5' 5) offset 0,0
#set ytics 0, 1, 5 offset 0,0
set key font "Helvetica, 30"
set xlabel '{/Symbol \164}' offset 0,-2
set xlabel font "Helvetica, 60"
set title font "Helvetica, 30"
set ytics font "Helvetica,40"
set xtics font "Helvetica,40"
set xrange[-1: 5]
#set xtics ('{/Times-Italic Homo} (10.7{/Symbol \045})' 0, '{/Times-Italic Strong simulation} (9.9{/Symbol \045})' 1) offset 0,-1.5
set xtics ('' -1, '1' 0, '3' 1, '5' 2, '7' 3, '9' 4, '' 5, '' 6) offset 0,-0.5


set style line 1 lc rgb 'red' 
set style line 2 lc rgb 'dark-blue'
set style line 3 lc rgb 'yellow'
set style line 4 lc rgb 'dark-violet'
set style line 5 lc rgb 'web-blue'
set style line 6 lc rgb 'black'
set style line 7 lc rgb 'gray60'
set style line 8 lc rgb 'gray100'


set logscale y 10
set yrange [0.1: 1000]
set ytics ('10^{-1}' 0.1, '1' 1, '10^1' 10, '10^2' 100, '10^3' 1000) offset 0,-1
#set ytics 0, 6, 30 offset 0,0
set output "runtime-aid.eps"
plot 'overall-aid' u 2 w histogram ls 1 fill pattern 4 t "Nars", 'overall-aid' u 3 w histogram ls 4 fill pattern 3 t "Yun", 'overall-aid' u 4 w histogram ls 2 fill pattern 5 t "Astar", 'overall-aid' u 5 w histogram ls 3 fill pattern 1 t "ALG1", 'overall-aid' u 6 w histogram ls 5 fill pattern 2 t "ALG2", 'overall-aid' u 7 w histogram ls 6 fill pattern 2 t "ALG3"

set yrange [0.1: 100]
set ytics ('10^{-1}' 0.1, '1' 1, '10^1' 10, '10^2' 100) offset 0,-1
#set yrange [0: 100]
#set ytics 0, 20, 100 offset 0,0
set output "runtime-pub.eps"
plot 'overall-pub' u 2 w histogram ls 1 fill pattern 4 t "NetDepth", 'overall-pub' u 3 w histogram ls 4 fill pattern 3 t "NetDepth", 'overall-pub' u 4 w histogram ls 2 fill pattern 5 t "NetDepth", 'overall-pub' u 5 w histogram ls 3 fill pattern 1 t "NetDepth", 'overall-pub' u 6 w histogram ls 5 fill pattern 2 t "NetDepth"

