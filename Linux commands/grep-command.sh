# Global regular expression print or grep lets you search specific lines from a file using keywords. It is useful for filtering large data like logs. The syntax looks as follows:

grep [options] keyword [file]

# You can also filter data from another utility by piping it to the grep command. For example, the following searches file.txt from the ls command’s output:

ls | grep "file.txt"
