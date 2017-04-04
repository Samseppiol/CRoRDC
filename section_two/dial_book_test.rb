#we are tasked to create a dialbook that displays the area code for 10 cities, with the result being displayed
#from the users prompt.

dial_book = {
  "Vic" => "03",
  "Tas" => "03",
  "NSW" => "02",
  "ACT" => "02",
  "QLD" => "07",
  "NT" => "08",
  "SA" => "08",
  "WA" => "08"
}

def states(hash)
  hash.each { |k, v| puts k}
end

def get_area_code(hash, key)
  hash[key]
end

loop do
  puts "Would you like to look up a dial code Y/N"
  answer = gets.chomp.upcase
  if answer != "Y"
    break
  end
  puts "Which state would you like to search for"
  states(dial_book)
  puts "Enter your choice"
  prompt = gets.chomp
  if dial_book.include?(prompt)
    puts "The area code for #{prompt} is #{get_area_code(dial_book, prompt)}"
  else
    puts "Invalid Selection"
  end
end
