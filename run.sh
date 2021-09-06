#!/bin/bash
z=$(grep -s -L this E-*)
for i in ${z}; 
do test-runner -e ${i}; 
done