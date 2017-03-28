#This is string concatenation. Adding two strings together with an empty space string in between.
puts "Jack" + " " "Hage"

#Mashrur goes in to irb here, I continue in atom in order to keep documenatation and examples, just like my previous ruby course, CRPC.
first_name = "Jack"
last_name = "Hage"
puts first_name + " " + last_name

# What if we want to find out what class we are using.
 p first_name.class
 #Same as a number
 p 3.class
#We can also find out all the methods in ruby that we can use on the class.
p first_name.methods
# We pick the .nil? method to try out
p first_name.nil?
p "".nil?
p nil.nil?
first_name_also = first_name
puts first_name_also
# What if we change the original string?
first_name = "New Jack"
puts first_name
# Because firstname also was being pointed at the string in previous memoery, it will not update. It will still point at the previous string.
# Variables do not point to variables.
puts first_name_also
# String iterpolation:
puts "My name is #{first_name}"
# Spaces are counted as a character
p first_name.length
