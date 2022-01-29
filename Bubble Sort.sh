clear
read -p "Enter number of elements: " x

for ((i=0;i<x;i++))
do
  read arr[i]
done

for ((i=0;i<x;i++))
do
  for ((j=0;j<x-i-1;j++))
  do
    if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
    then
      temp=${arr[j]}
      arr[$j]=${arr[$((j+1))]}  
      arr[$((j+1))]=$temp
    fi
  done
done

echo "Sorted Array :"
echo ${arr[@]}
