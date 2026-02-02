reset
set term pdfcairo font "Times New Roman,25"
set output "ged_dist.pdf"
#set terminal postscript eps color
#set output "tiedged.eps"
set key right top Left reverse
set key font "Times-Roman,20"
set xlabel "GED" font "Times-Roman,25"
set ylabel "Frequency %" offset 0.5  font "Times-Roman,25"
#set boxwidth 0.9 absolute
#set size 0.8,0.8

set style fill pattern 3 border -1
set style histogram clustered gap 1 title offset character 0, 0, 0
set datafile missing '-'
set style data histograms


#set xtics   ("1M" 1, "2M" 2, "3M" 3, "4M" 4, "5M" 5)
#set xrange [0.93 : 1.0]
#set ytics   ("0.5" 0.5, "1.0" 1.0, "1.5" 1.5, "2.0" 2.0, "2.5" 2.5, "3.0" 3.0)
#set yrange [0.5 : 3.0] noreverse nowriteback




plot 'ged_dist.plt' u 1:2 title 'GED distribution' with lp lw 2




