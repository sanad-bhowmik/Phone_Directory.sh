#!/bin/bash

while :
do
clear

echo "1. Add number in your contact"
echo "2. Search a number from your contact"
echo "3. Delete a number from your contact"
echo "4. View your phone directory"
echo "5. Quit"
echo "=========================================="

read -p "Enter your choice: " input
echo ""
clear

case $input in

1) echo "Add number in your contact"
echo "------------------------------------"
read -p "Enter Name: " name
echo "Got it!"
read -p "Enter Number: " num
clear
echo "New contact info:"
echo "-> Name: $name. -> Number: $num"
echo "$name : $num" >> phonedir.log
echo "save" ;;

2) echo "Search contact"
echo "------------------------------------"
read -p "Enter contact name to search: " sq
clear
echo "Search result: "
grep -i $sq phonedir.log;;

3) echo "Delete contact"
echo "------------------------------------"
read -p "Enter contact name to be deleted: " d
sed -i -e " /$d/d" phonedir.log
echo "Deleted number";;

4) echo "Phone Directory"
echo "------------------------------------"
cat phonedir.log;;

5) break;;
*) echo "Wrong option";;
esac;
read -p "Enter 5 to quit, Enter anything to go to main menu: " f
if [$f -eq 5]
then break
fi
done