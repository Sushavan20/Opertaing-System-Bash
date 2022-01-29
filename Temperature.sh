clear
f=data.txt
echo $f
if [ -f $f ]
then
  exec<$f
  while read line
  do
    set `echo $line`
    if [ $2 -lt 15 ]
    then
      w="very cold"
    elif [ $2 -ge 15 ] &&  [ $2 -lt 25 ]; then
      w="cold"
    elif [ $2 -ge 25 ] && [ $2 -lt 35 ]; then
      w="hot"
    else
      w="very hot" 
    fi
    echo "$1  $2  $w" >> out2
  done  
fi

-----------------------------------------------------------------

Data
------
sunday 40
monday 43
tuesday 41
wedesday 36
thursday 34
friday 32
saturday 28
sunday 25 
monday 23
tuesday 21
wednesday 19
thursday 18
friday 15
saturday 12
