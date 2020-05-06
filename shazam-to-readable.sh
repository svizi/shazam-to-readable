#!/usr/bin/env bash

# Small bash script that converts Shazam Data to a more human readable format. 
# First command line argument is Shazam file 
# Second command line argument is your choice of delimiter between Artist and Song
echo -n "Input file $1 will be converted."
cat $1 |
cut -d',' -f1,2 |
sed 's/"/''/g' |
sed "s/,/$2/g" |
grep -v '^artist' |
sort -u
