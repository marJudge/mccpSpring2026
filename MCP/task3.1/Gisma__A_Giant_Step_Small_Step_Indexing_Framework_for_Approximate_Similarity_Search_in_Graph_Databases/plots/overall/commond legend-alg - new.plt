set term postscript enhanced eps 32
set term postscript enhanced
set term post eps color solid enh
set output "title-alg.eps"

#set size 3.2, 0.1
set size 2, 0.1

set pointsize 5
#set key reverse
set key font "Helvetica, 20"
unset border 
unset tics 


set xrange [100000000:100000000 + 0.000001]
set yrange [100000000:100000000 + 0.000001]

set multiplot
#set key horizontal width 1
set key horizontal center

set style fill solid 1 border -1
set style line 1 lc rgb 'red' 
set style line 2 lc rgb 'dark-blue'
set style line 3 lc rgb 'yellow'
set style line 4 lc rgb 'dark-violet'
set style line 5 lc rgb 'web-blue'
set style line 6 lc rgb 'black'
set style line 7 lc rgb 'gray60'
set style line 8 lc rgb 'gray100'

set key at graph 0.12, graph 0.1 center maxrows 1
#plot 'title' u 1 w histogram ls 6 t "TAP"
#plot 'title' u 1 w histogram ls 1 fill pattern 2 t "TAP"
plot 'title' u 1 w histogram ls 4 fill pattern 1 t "Transformation"


set key at graph 0.40, graph 0.1 center maxrows 1
#plot 'title' u 1 w histogram ls 6 t "TAP"
#plot 'title' u 1 w histogram ls 1 fill pattern 2 t "TAP"
plot 'title' u 1 w histogram ls 1 fill pattern 4 t "TAP"

set key at graph 0.65, graph 0.1 center maxrows 1
#plot 'title' u 2 w histogram ls 7 t "TAPE" 
plot 'title' u 2 w histogram ls 3 fill pattern 3 t "TAPE"

set key at graph 0.90, graph 0.1 center maxrows 1
#plot 'title' u 3 w histogram ls -1 fill pattern 4 t "TAPSE"
#plot 'title' u 3 w histogram ls 2 fill pattern 6 t "TAPSE"
plot 'title' u 3 w histogram ls 2 fill pattern 5 t "TAPSE"