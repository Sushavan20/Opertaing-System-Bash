echo "Enter Range:"
read n

for ((i=1;i<n;i++))
do
  c=$i
  d=$i
  b=0
  a=0
  while((c>0))
  do
    a=$((c%10))
    b=$((b + a*a*a))
    c=$((c/10))
  done
  if((b==d)); then
    echo "$i"
  fi
done
