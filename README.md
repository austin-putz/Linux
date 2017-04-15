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


