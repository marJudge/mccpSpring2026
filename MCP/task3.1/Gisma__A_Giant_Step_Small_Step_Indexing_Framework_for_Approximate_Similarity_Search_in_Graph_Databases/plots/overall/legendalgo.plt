set term postscript enhanced eps 32
set output "./fig/runtimetitle.eps"

#set size 3.2, 0.1
set size 2, 0.08

set pointsize 5
#set key reverse
set key font "Helvetica, 20"
unset border 
unset tics 


set xrange [100000000:100000000 + 0.000001]
set yrange [100000000:100000000 + 0.000001]



set multiplot
set key horizontal center

set key at graph 0.09, graph 0.1 center maxrows 1
plot './dat/efficiency/Runtime-btc_2011-WCC' u 2 w histogram ls -1 fill pattern 3 t "DC"

set key at graph 0.27, graph 0.1 center maxrows 1
plot './dat/efficiency/Runtime-btc_2011-PEEL' u 2 w histogram ls -1 fill pattern 2 t "PEEL"

set key at graph 0.46, graph 0.1 center maxrows 1
plot './dat/efficiency/Runtime-btc_2011-PEEL_' u 2 w histogram ls -1 fill pattern 6 t "PEEL*"

set key at graph 0.65, graph 0.1 center maxrows 1
plot './dat/efficiency/Runtime-btc_2011-PEEL-WCC' u 2 w histogram ls -1 fill pattern 1 t "PEEL-DC"

set key at graph 0.87, graph 0.1 center maxrows 1
plot './dat/efficiency/Runtime-btc_2011-PEEL-WCC_' u 2 w histogram ls -1 fill pattern 0 t "PEEL-DC*"
