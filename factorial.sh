echo "Factorial Calculator !!!"
echo "Enter a Number to calculate its Factorial= "
read n
f=1
for ((i=1;i<=n;i++))
do
	f=$((f*i))
done
echo "Factorial of the Number $n is = $f"
