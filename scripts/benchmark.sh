
for cmpName in gcc pluto plutopar polly pollypar; do
  for filename in $(find ./bin/$cmpName/* -name '*.out'); do
      bname="$(basename $filename .out)"
      fname="./logs/$cmpName/$bname.log"

       for i in {1..100}; do
            $filename >> $fname
            echo "Done $cmpName $bname run: $i"
          done
  done
done
