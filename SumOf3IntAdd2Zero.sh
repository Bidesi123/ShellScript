echo "enter array length"
read arrayLength
echo "enter $arrayLength value"
for (( i=0; i<arraLength; i++ ))
do
	read ar[$i]
done
for (( i=0; i<arrayLength; i++ ))
do
	echo -e "${ar[$i]} \c"
done
