# Same as above, but only print out values greater than 5.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each { |number_major| print number_major.to_s + "\n" if  number_major > 5 }