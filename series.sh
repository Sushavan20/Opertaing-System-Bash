    f(x,n)=1+x2/2!+x4/4!+….+x2*n/(2*n)!
    Where x is the variable and n is the number of terms.

fact()
{
  y=$1
  pro=1
  for(( i=1 ; i<=$y ; i++))
   do
    pro=`expr $pro \* $i`
  done
  echo $pro
}
series_sum()
{
  x=$1
  n=$2
  sum=0
  for(( j=0 ; j<=$n ; j++))
    do
    #sum=`echo "scale=3; $sum+(($x ^ (2 * $j)) / `fact $(2 * j)`" |bc`
    e=`expr 2 \* $j`
    e=`fact $e`
    sum=`echo "scale = 3; $sum + ($x^(2*$j)) / $e" | bc`
  done
  echo $sum  
}
echo "Enter value of x and n"
read x n
s=`series_sum $x $n`
echo "sum is = $s "
