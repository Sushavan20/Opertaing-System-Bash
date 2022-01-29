pascal(){
  n=$1
  c=1
  for((i=0;i<n;i++))
  do
    for((j=1;j<=n-i;j++))
    do
      echo -n "  "
    done
    for((k=0;k<=i;k++))
    do
      if [ $k -eq 0 -o $i -eq 0 ]
      then
        c=1;
      else
        c=$((c*(i-k+1)/k))
      fi
      echo -n $c "  "
    done
    echo
  done     
}
echo "Enter number of rows: "
read n
pascal $n
