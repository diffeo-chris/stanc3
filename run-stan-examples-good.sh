#!/bin/bash
for foldername in folder/*; do
  cd "src/stan/examples-good";
  for filename in *.stan; do
    printf "\n\n $filename \n ---------\n"; ./../../../stan.native "$filename" ;
  done  &> ../../../"stan-examples-good-out.log" ;
  cd ../..;
done
