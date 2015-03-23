# This program checks if a script name is already in use. If it is available for use, create a shell script, make it executable and open it in editor.

# Echo message saying what program name we are looking for.
echo "Cheking if a program called '"$1"' exists:"

# Use "which" with that argument to see if a program with that name exists.
# Make "which" silent by putting this at the end of the line.
which $1 > /dev/null   2> /dev/null 

# Echo the return code of "which".
result=$?
# echo $result

# Whether the program name is taken or not.
if test $result = "1"
  then
    echo "Name is available. Creating file and opening editor..."

    # If good program name, use "touch" to create the file.
    touch $1

    # Use "chmod" to make the file executable.
    chmod +x $1

    # Launch the editor, detached from the command line.
    gedit $1 &

  else
    echo "Program name is NOT available."
fi