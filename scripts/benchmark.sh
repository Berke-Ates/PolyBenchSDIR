
for cmpName in gcc pluto plutopar polly pollypar; do
  for benchName in 2mm adi gemver heat-3d trmm; do
      bname="$(basename $filename .out)"
      fname="./logs/$cmpName/$bname.log"

       for i in {1..100}; do
            ./bin/$cmpName/$benchname >> $fname
            echo "Done $cmpName $bname run: $i"
          done
  done
done
