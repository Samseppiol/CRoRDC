a = [1, 4, 7, 9, 'hello', 1.6, [1, 4, 7]]
p a
p a[6]
p a.include?(8)
p a.include?(1)
#What if we want to reverse the array and ipdate it, use the bang symbol !
p a.reverse!
#What about random
p a.shuffle
#Generate a random array of numbers
# b = (0..99).to_a.shuffle!
# p b
#However 100 ios a bit much, lets do 0-10
c = (0..9).to_a
p c
#What if we want to add something to this array? We use '<<' to push into the array. Or we can simply use .push
c << 25
c.push(33)
p c
#What if we want to add something to be the first index of the array (first in order)
c.unshift("Jack")
p c
#What if we want to remove the last item in the array
c.pop
p c
#What if we have duplicates in our array and we want to remove them?
d = [1, 1, 1, 1, 3, 3, 3, 5, 5, 5, 6, 7, 8, 9, 9, 9]
p d.uniq
#However once again the change the original array you have to use the bang symbol
d.uniq!
p d
