echo "enter your number"
read factorLength
factorNum=2
echo "prime factor numbers are: "
while [ $factorLength -gt 1 ]
do
	if [ $(($factorLength%$factorNum)) -eq 0 ]
	then
		echo $factorNum
		factorLength=$(($factorLength / $factorNum))
	else
		(( factorNum++ ))
	fi
done
