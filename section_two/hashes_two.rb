numbers = {a: 1, b: 3, c: 7, d: 9, e: 34, f: 98}
p numbers
#how do we iterate over that?
#use .each and pass in our block of code, k for key, v for value
numbers.each {|k, v| puts v}
#But what about a nicer way to display our result
numbers.each { |k, v | puts "The key is #{k} and the value is #{v}"}

#What if we want to get rid of all values over 3?
#basically saying if the value is greater than 3 then delete the key.
numbers.each {|k, v| numbers.delete(k) if v > 3}
puts numbers
#What about the select method?

numbers[:c] = 4
numbers[:d] = 9
numbers[:e] = 11

numbers.select { |k, v| p v.odd?}
