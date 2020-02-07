string="hello <<user name>>, how are you"
echo "enter name"
read username
stringFinal=${string/<<user name>>/$username}
echo $stringFinal
