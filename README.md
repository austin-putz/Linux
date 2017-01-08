# Linux

This page will hopefully include helpful Unix/Linux scripts for 
animal breeders and data analysts.

# Summary of blupf90.x.x.sh:

blupf90.sh is a bash script that is designed to make your life easy
when working with the blupf90 family of programs. It was 
developed in Ubuntu 14.04. Please let me know if there are
conflicts with other OS's (especially Linux as I assume most
are done on Linux servers, but Mac is common as well and
runs bash). Sorry Windows people out there. 
If you can write a comparable batch file that does the 
same thing I would love to see it. 

Ever have a situation where your boss gives you 10 traits to analyze
and you have to do all 2 trait combinations to get 
genetic correlations? Very common task in animal breeding,
yet the UGA programs (BLUPF90) don't have a wrapper around
their programs for anything like this (as far as I know).
The solution for me was to write a Linux script that loops
over all the trait combinations and does each analysis
one by one. This has saved me many hours of "by hand" work. 
My first solutions to this script were not very robust
and hard to use (many of them doing slightly different
tasks). This beta version allows high flexibility by
doing 1 and 2 trait analyses, aireml and thrgibbs1f90, 
and the ability to give a general parameter file so you
don't need to make individuals ones if they are all the 
same. 

Real documentation will follow. If you stumbled upon this
page and you are interested please email me and I can 
speed up the documentation process. If not I may not 
worry about it until someone does... If you are
good with bash scripts, you can probably figure out how 
it works by yourself by looking at my code.

## fmtGenoR.sh

Will change the format from:

1     1020201020
2     1010202010

to:
1     1 0 2 0 2 0 1 0 2 0
2     1 0 1 0 2 0 2 0 1 0


