clear
fib(){
  x=0
  y=1

  printf "$x $y "

  while [ $n -ne 2 ]
  do
    r=`expr $x + $y`
    printf "$r "
    x=$y
    y=$r
    n=`expr $n - 1`
  done
}
echo "Enter number of elements"
read n
fib $n
