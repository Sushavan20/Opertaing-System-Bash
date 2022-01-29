echo "date of birth(DD/MM/YYYY)"
read dob
IFS="/"
set $dob
d=$1
m=$2
y=$3
 
d1=`date +%d`
m1=`date +%m`
y1=`date +%Y`

dd=`expr $d1 - $d`
mm=`expr $m1 - $m`
yy=`expr $y1 - $y`

if [ $dd -lt 0 ]; then 
  mm=`expr $mm - 1`
  dd=`expr $dd + 30`
fi 

if [ $mm -lt 0 ]; then
  yy=`expr $yy - 1`
  mm=`expr $mm + 12`
fi  

echo "Age is $yy years and $mm months and $dd days"
