
for cmpName in gcc pluto plutopar polly pollypar; do
  for bname in 2mm adi gemver heat-3d trmm; do
      fname="./logs/$cmpName/$bname.log"

       for i in {1..100}; do
            ./bin/$cmpName/$bname.out >> $fname
            echo "Done $cmpName $bname run: $i"
          done
  done
done
