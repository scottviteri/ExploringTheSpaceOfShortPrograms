#!/usr/bin/bash

for ((i=1000001; i<=3000000; i++)); do
    OUTPUT="$(echo "obase=2;${i}" | bc | guile -s zot.scm)";
    echo "${OUTPUT}" >> "export2.txt";
done

