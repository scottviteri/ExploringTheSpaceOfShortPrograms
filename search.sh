#!/usr/bin/bash

for ((i=500001; i<=1000000; i++)); do
    OUTPUT="$(echo "obase=2;${i}" | bc | guile -s zot.scm)";
    echo "${OUTPUT}" >> "export2.txt";
done

