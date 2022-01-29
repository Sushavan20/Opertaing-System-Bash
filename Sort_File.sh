clear
insertData(){
  read -p "Enter the roll no.:" rNum
  read -p "Enter the student's name:" name
  read -p "Enter the marks:" val
  echo "$rNum  $name  $val">>StudentDetail.txt
  sort -k 3 StudentDetail.txt -o StudentDetail.txt
  echo
}
operationMenu(){
  for(( ;; ))
  do
  echo "1.Insert student data
  5.Exit"
  read -p "Enter your choice: " n
  case $n in
  1)insertData;;
  5)break;;
  *)echo "NotAValidChoice"
  esac
  done
}
operationMenu
rm StudentGrade.txt
fHandle=StudentDetail.txt
echo "-NAME-|-ROLL-|-MARKS-" >> StudentGrade.txt
echo >> StudentGrade.txt
if [ -f $fHandle ]
then
  while read line
  do
    set `echo $line`
    echo $1 "| " $2 " | " $3 >> StudentGrade.txt
  done < $fHandle
fi
cat StudentGrade.txt
