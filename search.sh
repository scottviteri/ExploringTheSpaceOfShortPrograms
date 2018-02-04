#!/usr/bin/bash

for ((i=1; i<=500000; i++)); do
    OUTPUT="$(echo "obase=2;${i}" | bc | guile -s zot.scm)";
    echo "${OUTPUT}" >> export.txt;
done

