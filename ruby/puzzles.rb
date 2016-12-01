 # Create an array with the following values: 3,5,1,2,7,9,8,13,25,32. Print the sum of all numbers in the array. Also have the function return an array that only include numbers that are greater than 10 (E.g. when you pass the array above, it should return an array with the values of 13,25,32 - hint: use reject or find_all method)
arr=[3,5,1,2,7,9,8,13,25,32];sum=0; arr.each{|element| sum += element}; puts sum
puts arr.find_all { |i| i > 10}

 # Create an array with the following values: John, KB, Oliver, Cory, Matthew, Christopher. Shuffle the array and print the name of each person. Have the program also return an array with names that are longer than 5 characters.
 arr=['John', 'KB', 'Oliver', 'Cory', 'Matthew', 'Christopher']
 puts arr.shuffle
arr.each { |person| puts person if person.length > 5}

 # Create an array that contains all 26 letters in the alphabet (this array must have 26 values). Shuffle the array and display the last letter of the array. Have it also display the first letter of the array. If the first letter in the array is a vowel, have it display a message
 arr = Array("a".."z")
 puts arr.shuffle.last
 puts arr.first
 puts ["a","e","i","o","u"].include?(arr.first) ? arr.first+" is a vowel" : arr.first+" is not a vowel"

 
random_array = Array.new
10.times { random_array.push(rand(55..100)) }
print random_array
# have it be sorted (showing the smallest number in the beginning). Display all the numbers in the arrays. 
puts random_array.sort
# Next, display the minimum value in the array as well as the maximum value.
puts random_array.max
puts random_array.min
# Create a random string that is 5 characters long (hint: (65+rand(26)).chr returns a random character; use a map function and a range to do this).
print string_array = (1..5).map{ rand(65..90).chr }.join
# shorter way
5.times { print rand(65..90).chr }
# Generate an array with 10 random strings that are each 5 characters long
string_array = Array.new
10.times { string_array.push((1..5).map{ rand(65..90).chr }.join) } 
print string_array
 

