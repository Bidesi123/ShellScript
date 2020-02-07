echo "enter harmonic length"
read HarmonicLimit
limit=1
HarmonicValue=0
while [ $limit -le $HarmonicLimit ]
do
	HarmonicValue=$(echo $limit $HarmonicValue | awk '{print (1/$1+$2)}')
	(( limit++ ))
done
echo "$HarmonicValue"
