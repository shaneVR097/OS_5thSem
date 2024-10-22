echo "Marks Sheet of students"
echo "Enter marks in DAA,SWE,OOPS,DM,FA"
read -r mrk
IFS=',' read -r -a marks <<< "$mrk"

subj=("DAA" "SWE" "OOPS" "DM" "FA")

gradation() {
    local mark=$1
    if  [ "$mark" -le 100 ] && [ "$mark" -ge 90 ]; then
        echo "A"
    elif  [ "$mark" -le 89 ] && [ "$mark" -ge 70 ]; then
        echo "B"
    elif [ "$mark" -le 69 ] && [ "$mark" -ge 40 ]; then
        echo "C"
    else
        echo "F"
    fi
}

for i in "${!subj[@]}"; do
    subject=${subj[$i]}
    mark=${marks[$i]}
    grade=$(gradation "$mark")
    echo "$subj: $mark - Grade: $grade"
done
