n=$1
i=0
while [ $i -le $n ]
do
	echo " 2 power of $i is " $[2**$i]
	(( i++ ))
done
