echo "enter the year"
read year
while [[ year -lt 1000 || year -gt 10000 ]]
do
	echo "enter 4 digit year only"
	read year
done
if [ $(($year % 400)) -eq 0 ]
then
	echo "leap year"
elif [[ $(($year % 100)) -ne 0 && $(($year % 4)) -eq 0 ]]
then
	echo "leap year"
else
	echo "not a leap year"
fi
