#!/bin/bash
#This will take two inputs, a file name (argument 1) and an alphanumeric string with spaces in between each (argument 2 onwards)
# For each argument given (after the file name), the code will search the file for that one letter and then return the lines that contain them
# It will use a for loop to do this repeatedly for every argument given
#here is an example usage:
#sh morse_code_script_acw2.sh morse.txt E M I L Y

echo "The morse code for the input word is"
for i in $@
do
results=$(grep -w "$i" $1)
printf "$results\t"
done




