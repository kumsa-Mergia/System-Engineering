# find command

# The find command searches for a file within a specific directory. Here’s the syntax:

find [path] [options] expression

# If you don’t specify the path, the find command will search your current working directory. To find files using their name, add the -name option followed by the keyword.

# You can specify the type of item you are looking for using the -type flag. The –type f option will search files only, while -type d will find directories. For example, we will check file.txt in path/to/folder:

find path/to/folder -type f -name "file"
