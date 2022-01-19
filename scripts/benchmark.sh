
for cmpName in gcc pluto plutopar polly pollypar
  for filename in $(find ./bin/$cmpName/* -name '*.out'); do
      bname="$(basename $filename .out)"
      fname="./logs/$cmpName/$bname.mlir"

       for i in {1..100}
          do
            $filename >> $fname
            echo "Done $cmpName run: $i"
          done
  done
done
