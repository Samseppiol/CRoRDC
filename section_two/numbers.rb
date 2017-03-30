x = "5"
p x
x = x.to_i
p x
y = x * 37
p y
y = y.to_s
p y

# lets say hi 20 times
20.times {puts "hi"}

puts "Enter a number"
number_one = gets.chomp
puts "Input a second number"
number_two = gets.chomp
puts "those numbers added together come to #{number_one.to_i + number_two.to_i}"

#Home Work Assignment
puts ">"
puts "those numbers multiplied together come to #{number_one.to_i * number_two.to_i}"
puts ">"
puts "those numbers divided together come to #{number_one.to_f / number_two.to_f}"
puts ">"
puts "those numbers subtracted come to #{number_one.to_i - number_two.to_i}"
puts ">"
puts "The modular number is #{number_one.to_f % number_two.to_f}"
