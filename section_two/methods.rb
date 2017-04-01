def multiply(first_number, second_number)
  puts first_number.to_f * second_number.to_f
end

def divide(first_number, second_number)
  puts first_number.to_f / second_number.to_f
end

def subtract(first_number, second_number)
  puts first_number.to_f - second_number.to_f
end

def mod(first_number, second_number)
  puts first_number.to_f % second_number.to_f
end

puts "What do you want to do. 1) Multiply 2) Divide 3) Subtract 4) Find Remainder"
choice = gets.chomp
puts "Enter a number"
first_number = gets.chomp
puts "Enter a second number"
second_number = gets.chomp

if choice == "1"
  puts "You have chosen to multiply, the result is:"
  multiply(first_number, second_number)
elsif choice == "2"
  puts "You have chosen to divide, the result is:"
  divide(first_number, second_number)
elsif choice == "3"
  puts "You have chosen to subtract, the result is:"
  subtract(first_number, second_number)
elsif choice == "4"
  puts "You have chosen to find remainder, the result is:"
  mod(first_number, second_number)
else
  puts "Invalid Choice"
end
