#==============================================================================#
# Description
#==============================================================================#

# gnuplot for plotting pedigree relationships

#==============================================================================#
# Set Output
#==============================================================================#

set term png
set output "A.png"

#==============================================================================#
# Set Options
#==============================================================================#

# fields separated by spaces
set datafile separator " "

set title "Relationship Matrix A"
#set xlabel "Round"
#set ylabel "Convergence"
#set grid
set timestamp
#set autoscale
#plot 'filename' using 1:2 with circles lc rgb "blue"
#plot 'filename' using 1:2 with impulses
#plot 'filename' using 1:2 with line lt 4

set yrange [] reverse

# options

#set border linewidth 0
unset key
#unset colorbox
#unset tics

set xtics format ""
set ytics format ""

set lmargin screen 0.1
set rmargin screen 0.8
set tmargin screen 0.9
set bmargin screen 0.15

#set palette grey
set palette defined (0 "white", 1 "yellow", 2 "red")
#set palette model RGB

set cblabel "Relationship"

#==============================================================================#
# Make the plot
#==============================================================================#

#set pm3d map
#set pm3d interpolate 1,1
#splot 'ch2.ped' matrix

#plot 'ch2.ped' matrix with image, \ 'ch2.ped' 

plot 'ch2.ped' matrix using 1:2:3 with image, '' matrix using 1:2:(sprintf("%g",$3)) with labels  # plotting 0's
#plot 'ch2.ped' matrix using 1:2:3 with image, '' matrix using 1:2:($3 == 0 ? "" : sprintf("%g",$3) ) with labels # remove the 0's in matrix

#==============================================================================#
# Quit
#==============================================================================#

quit

