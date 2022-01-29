if [ $# -eq 0 ]; then
  echo "no argument specified."
  exit
fi
for i in $*
do
  if [ -f $i ]; then
    echo "$i is a file"
    echo "Lines: $(cat $i | wc -l)"
    echo "Words: $(cat $i | wc -w)"
    echo "Chars: $(cat $i | wc -m)"
    if [ ! -w $i ]; then
      chmod "g+w" $i
      chmod "o+w" $i
    elif [ ! -x $i ]; then
      chmod "g+w" $i
      chmod "o+w" $i
    fi 
  else
    echo "$i is a directory"
    cd ..
    cd $i
    ls
  fi
done
