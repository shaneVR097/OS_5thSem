echo "Print all prime numbers from 1 to 100 !!"

echo "All Prime numbers from 1 to 100 are:"

lim=100
i=2

while [ $i -le $lim ]
do

 j=1
 f=0

 while [ $j -le $i ]
 do
	if [ $((i % j)) -eq 0 ]; then
		f=$((f + 1))
	fi
 	j=$((j + 1))
 done

 if [ $f -eq 2 ]; then
	echo " $i "
 fi

 i=$((i+1))

done
