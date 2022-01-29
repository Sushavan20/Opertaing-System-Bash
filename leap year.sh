echo "Enter the year: "
read n
a=`expr $n % 4`
b=`expr $n % 100`
c=`expr $n % 400`
if [ $a -eq 0 -a $b -ne 0 -o $c -eq 0 ]
then 
  echo "$n is leap year"
else
  echo "$n is not a leap year"  
fi
