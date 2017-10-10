# Linux

This page will hopefully include helpful Unix/Linux scripts for 
animal breeders and data analysts. 

## fmtGenoR.sh

BLUPF90 needs the formatted genotypes to start at the same 
character and are usually in one string. 
However, when you read into R, Python, or Julia, you need them
to be separated to more easily read them in. 

Will change the format from:

  1     1020201020 
  
  2     1010202010

to:

  1     1 0 2 0 2 0 1 0 2 0 
  
  2     1 0 1 0 2 0 2 0 1 0
  
This makes it possible to read it into your favorite language easier (R, Python, Julia, etc). 

## ssh guide

This guide should help new users with ssh. It's the guide I use everytime I forget how to 
ssh from my Mac to my Ubuntu machine, but should work for any UNIX/Linux system I think. 

## File Extension Highlighting

This will highlight certain file extensions certain colors. You can add or change your own in the script. 

[Screenshot](/Linux/Screenshots/dir_colors_screenshot.png)

## gnuplot

This is Linux's plotting system using space or tab delimited files. I haven't used it much, but it can be very handy. You don't need to load data into R to get a quick plot. 




