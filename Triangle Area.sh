echo "Enter three sides of triangle: "
read a b c

x=$((a+b))
y=$((b+c))
z=$((a+c))

if [ $x -gt $c -o $y -gt $a -o $z -gt $b ]; then
  echo "Triangle is a valid one."
else
  echo "Not Valid. Check Again"
fi

s=$((a+b+c))
m=$((s-a))
n=$((s-b))
o=$((s-c))
mul=`expr $s \* $m \* $n \* $o`
ans=`echo "scale=3; sqrt($mul)"|bc`

echo "Area=$ans"
