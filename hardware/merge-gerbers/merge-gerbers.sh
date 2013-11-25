rm *.s#?
rm *.b#?
perl /Users/thomasprice/Documents/eagle/GerberMerger/GerberMerger.pl sanguino_3x_outline sanguino -1030 -1200
perl /Users/thomasprice/Documents/eagle/GerberMerger/GerberMerger.pl sanguino_3x_outline_sanguino sanguino -1030 11202
perl /Users/thomasprice/Documents/eagle/GerberMerger/GerberMerger.pl sanguino_3x_outline_sanguino_sanguino sanguino -1030 23603
for i in `ls sanguino_3x_outline_sanguino_sanguino_sanguino.*`
do
  j=`echo $i | sed 's/.*\.//'`
  cp $i sanguino_3x.$j
done
cp sanguino_3x_outline.GML sanguino_3x.GML
rm sanguino_3x.zip
tar -czf sanguino_3x.zip sanguino_3x.*
rm sanguino_3x_outline_sanguino*
