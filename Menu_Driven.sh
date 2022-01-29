Write a menu driven shell program to perform the following actions depending on number key:
a) Contents of the file
b) List of users who currently logged in
c) Present working directory & files under current directory
d) List of files
e) Process of users
f) Today’s date
g) Display the calendar of any year
h) Exit

clear
z=1
while((z==1))
do
  echo "1. Contents of the file"
  echo "2. List of users who currently logged in"
  echo "3. Present working directory & files under current directory"
  echo "4. List of files"
  echo "5. Process of users"
  echo "6. Today's date"
  echo "7. Display the calender of any year"
  echo "8. Exit"
  read -p "Enter your choice: " x
  case $x in
    1)read -p "Enter filename: " file1
      cat $file1;;
    2)users;;
    3)pwd && ls;;
    4)ls;;
    5)read -p "Enter User: " n
      ps -u $n;;
    6)date;;
    7)read -p "Enter Year: " i
      cal $i;;
    8)exit;;
    *)echo "Error!";;
  esac
done
