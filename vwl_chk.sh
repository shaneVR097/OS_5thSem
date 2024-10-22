echo "Menu Driven program for Checking whether a letter is Vowel or not !!"
while true
do
    echo " Menu: "
    echo " 1. Check if a letter is a vowel"
    echo " 2. Exit"
    echo "---------------------------------"
    echo -n "Enter your choice [1-2]: "
    read chc

    case $chc in
        1)
            echo -n "Enter a Letter: "
            read l
	    al=$l
	    l=${l,,}
            # Check if the letter is a vowel
            if [[ "$l" == "a" || "$l" == "e" || "$l" == "i" || "$l" == "o" || "$l" == "u" ]]; then
                echo "$al is a vowel."
            else
                echo "$al is not a vowel."
            fi
            ;;
        2)
            echo "Exiting the program..."
            break
            ;;
        *)
            echo "Invalid choice! Please select a valid option."
            ;;
    esac

    echo ""
done
