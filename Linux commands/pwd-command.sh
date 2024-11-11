# To check the full path of your current working directory, use the pwd command. Its syntax is as follows:

pwd [options]

# The pwd command has only two options. The -L option prints environment variable content, like shortcuts, instead of the actual path of your current location. Meanwhile, -P outputs the exact location.

# For example, /shortcut/folder is a shortcut for /actual/path, and you are currently in /actual/path/dir. If you use the -L option, the output will be:

# /shortcut/folder/dir

# Meanwhile, the -P option will print the exact canonical path:

# /actual/path/dir
