printf "Enter Obtained number (out of 100): "
read x
printf "Grade -> "
case $x in
100|9[0-9]) echo "O";;
8[0-9]) echo "E";;
7[0-9]) echo "A";;
6[0-9]) echo "B";;
5[0-9]) echo "C";;
*) echo "F";;
esac
