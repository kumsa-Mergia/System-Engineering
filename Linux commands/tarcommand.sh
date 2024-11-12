# The tar command bundles multiple files or directories into an archive without compression. The syntax looks as follows:

tar [options] tar_file_name file1 file2

# To create a new TAR file, you must add the -c option. Then, use the -f flag to specify the archive’s name.

# If you want to enable compression, add a specific option based on your preferred method. For example, the following will bundle file1.txt and file2.txt with the gzip compression:

tar -cfz archive.tar.gz fle1.txt file2.txt

# Remember that the archive’s file format will differ depending on the compression method. Regardless of the extension, you can unpack a TAR file using this syntax:

tar [options] tar_file_name
