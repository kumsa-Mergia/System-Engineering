# chown command

# The chown command lets you change the ownership of files, directories, or symbolic links. Here’s the syntax:

chown [options] newowner:newgroup file1 file2

# If you want to assign a user as the new owner of an item, leave the group name empty. For example, we will make admin-vps the owner of file1.txt:

chown admin-vps file1.txt

# Conversely, omit the username to make all group members the owner. Remember to write the colons (:) like so:

chown :newgroup file1.txt
