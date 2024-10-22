echo "Printing a Right Angled Star pattern!!"
r=4
for (( i=1; i<=r; i++ ))
do
	for(( j=1; j<=i; j++ ))
	do
		echo -n "* "
	done
	echo ""
done

