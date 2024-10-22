echo "Gross Salary Computer from basic Salary !!"
read -p "Enter the basic salary: " bs

hra=0
da=0

if (( $(echo "$bs < 1500" | bc -l) )); then
    hra=$(echo "scale=2; $bs * 0.10" | bc)
    da=$(echo "scale=2; $bs * 0.90" | bc)
else
    hra=500
    da=$(echo "scale=2; $bs * 0.98" | bc)
fi

gs=$(echo "scale=2; $bs + $hra + $da" | bc)

echo "Basic Salary: Rs. $bs"
echo "HRA: Rs. $hra"
echo "DA: Rs. $da"
echo "Gross Salary: Rs. $gs"
