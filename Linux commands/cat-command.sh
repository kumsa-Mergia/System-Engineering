# The concatenate or cat command has various usages. The most basic one is printing the content of a file. Here’s the syntax:

cat file_name

# To print the content in reverse order, use tac instead. If you add the standard output operator symbol (>), the cat command will create a new file. For example, the following will make file.txt:

cat > file.txt

# You can also use cat with the operator to combine the content of multiple files into a new item. In this command, file1.txt and file2.txt will merge into target.txt:

cat file1.txt file2.txt > target.txt
