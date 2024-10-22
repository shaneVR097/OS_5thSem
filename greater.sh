echo "Greatest among 3 nos. enetred in Command Line Input"
a=$1; b=$2; c=$3;
echo "The 3 nos. are: $@"
if [ "$a" -gt "$b" ] && [ "$a" -gt "$c" ]; then
    echo "$a is greatest"
elif [ "$b" -gt "$a" ] && [ "$b" -gt "$c" ]; then
    echo "$b is greatest"
elif [ "$c" -gt "$a" ] && [ "$c" -gt "$b" ]; then
    echo "$c is greatest"
else
    echo "None is greatest"
fi
