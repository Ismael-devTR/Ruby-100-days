# Get rid of duplicates without specifically removing any one value

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 3]

#arr.uniq 	#Does not modify calling object
arr.uniq!
print arr