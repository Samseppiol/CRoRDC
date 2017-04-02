y = (0..10).to_a.shuffle!
p y
#When we want to iterate through this we use rubies .each method
#We pass in a block of code with a decalred variable which will be done to each element.
#That means each item will be i as it iterates through the array
#In this example we simply we want i to be puts to the screen, so the result is every number in the array displayed in order.
y.each {|i| puts i}


#What about a for loop?
#For each number in the array, hi will be displayed in the terminal.
for number in y
  puts "Hi"
end

#Lets use a new array
names = ['john', 'jack', 'jeremy']

#We can use a do loop
#What is passed in the block can be anything
names.each do |hello|
  puts "Hello #{hello}"
end

#Again we do something similar, but use an inbuilt ruby method capitalize.
names.each do |anything|
  puts "Hello #{anything.capitalize}"
end

#We can even do that in one line
names.each { |i| puts "Hello #{i.capitalize}" }
