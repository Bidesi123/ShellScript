echo "enter flip repetition"
read flip_repeat
count=$flip_repeat
head=0;
tail=0;
while [ $flip_repeat -gt 0 ]
do
        random=0.$(( RANDOM ))
        if (( $(echo $random 0.5 | awk '{print ($1 >= $2)}') ))
        then
        (( head++ ))
        else
        (( tail++ ))
        fi
        ((flip_repeat--))
done

echo "head repeated = $head"
echo "tail repeated = $tail"
head_perc=$(echo $head $count | awk '{print ($1 / $2 * 100)}')
echo "HEAD PECENTAGE :- $head_perc%"
tail_perc=$(echo $tail $count | awk '{print ($1 / $2 * 100)}')
echo "TAIL PECENTAGE :- $tail_perc%"
