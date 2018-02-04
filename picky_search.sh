for ((i=1; i<=30; i++)); do
    OUTPUT="$(echo "obase=2;${i}" | bc | guile -s zot.scm)";
    SIZE="$(echo -n "${OUTPUT}" | wc -c)";
    if [ $SIZE -gt 0 ];
        then echo "${i}" "${OUTPUT}" >> export.txt;
    fi;
done

