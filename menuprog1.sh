echo "Welcome to Menu-driven program !!"
while true
do
    echo "---------------------------------"
    echo " Menu: "
    echo " 1. View Current Working Directory"
    echo " 2. Check Even / Odd No."
    echo " 3. View File Count in Directory"
    echo " 4. Print the long listing of all files"
    echo " 5. Exit"
    echo "---------------------------------"
    echo -n "Enter your choice [1-5]: "
    read chc

    case $chc in
        1)
            echo "Current working directory: $(pwd)"
            ;;
        2)
            echo -n "Enter a number: "
            read num
            if (( num % 2 == 0 )); then
                echo "$num is even"
            else
                echo "$num is odd"
            fi
            ;;
        3)
            file_count=$(ls -1 | wc -l)
            echo "Number of files in the directory: $file_count"
            ;;
        4)
            echo "Long listing of all files:"
            ls -l
            ;;
        5)
            echo "Exiting the program..."
            break
            ;;
        *)
            echo "Invalid choice! Please select a valid option."
            ;;
    esac

    echo ""
done
