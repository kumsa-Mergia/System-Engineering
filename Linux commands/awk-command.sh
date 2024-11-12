# The awk command searches and manipulates regular expression patterns in a file. Here’s the basic syntax:

awk '/regex pattern/{action}' input_file.txt

# You can run multiple actions by listing them according to their execution order, separated by a semicolon (;). For example, this awk command calculates the average student score and print names that are above that threshold:

awk -F':' '{ total += $2; students[$1] = $2 } END { average = total / length(students); print "Average:", average; print "Above average:"; for (student in students) if (students[student] > average) print student }' score.txt
