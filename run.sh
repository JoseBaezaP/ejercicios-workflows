#!/bin/bash
z=$(grep -s -L this E-*)

directories=0
exercises=0

rm result

for i in ${z}; 
do
  directories=$((directories + 1))
  test-runner -e ${i} >> result
  
  if [ $? -eq 0 ]
  then
    exercises=$((exercises + 1))
  fi
done;

echo Se resolvieron $exercises ejercicios correctamente de $directories

cat result

if [ $exercises -eq $directories ]
then
  exit 0
else
  exit 1
fi