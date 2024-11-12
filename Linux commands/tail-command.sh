# The tail command is the opposite of head, allowing you to print the last few lines from files or another utility’s output. Here are the syntaxes:

tail [options] file_name

command | tail [options]

# The tail utility also has the same option as head. For example, we will extract the last five lines from the ping command’s output:

ping -c 10 8.8.8.8 | tail -n 5
