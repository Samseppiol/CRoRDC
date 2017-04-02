my_details = {'name' => 'Jack','color' => 'black' }

p my_details['name']

my_hash = { a: 1, b: 2, c: 3, d: 4}

#To call the a key which represents 1
p my_hash[:a]
#What if we want to add something to our hash
my_hash[:e] = 9
p my_hash
my_hash[:name] = 'Jack'
p my_hash
#What if we want to delete something from our hash
my_hash.delete(:b)
p my_hash
