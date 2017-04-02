y = (0..99).to_a
#What if we want to print all the odd elements?
p y.select { |number| number.odd?}
#Same for even numbers
p y.select { |anything| anything.even?}

#What if we have an array of strings
z = %w(Hello My Name Is Jack Hage)
p z
#We can join them all together
p z.join
#But that has no spaces! Lets fix it
p z.join(' ')
