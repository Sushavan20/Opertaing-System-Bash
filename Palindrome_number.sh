echo "Enter a number"
read n

sum=0
temp=$n

while [ $n -gt 0 ]
do
  sum=$(expr $sum \* 10)
  r=`expr $n % 10`
  sum=`expr $sum + $r`
  n=`expr $n / 10`
done

if [ $sum -eq $temp ]; then
  echo "Palindrome number"
else
  echo "Not a Palindrome number"
fi
