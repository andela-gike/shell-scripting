#!/bin/sh
# This is a comment!
echo "Hello world"

MY_MESSAGE="Hello World" # you can assign a word to a variable and echo it.
echo $MY_MESSAGE

# create a new directory
mkdir testDirectory test1 test2
# used to show the permission of that directory
ls -lt

# move to different directory
cd testDirectory
cd ..
cd test1
cd ..
cd test2
cd ..

cd testDirectory
touch file.js

# copy files
cp file.js newfile.js

# copy files from one directory to another
cd ..
cp test1/* test2

# list directory contents

ls -l testDirectory

# We can also store arguments from bash command line in special array
args=("$@")
#echo arguments to the shell
echo ${args[0]} ${args[1]} ${args[2]} ' -> args=("$@"); echo ${args[0]} ${args[1]} ${args[2]}'

#echo arguments to the shell
echo $1 $2 $3 ' -> echo $1 $2 $3'

# pipes connect the output of one command to the input of another
echo "hello there" | sed "s/hello/hi/"

# inputs
cat ./testDirectory/file.js

exit
