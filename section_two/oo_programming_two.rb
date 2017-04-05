#using attr accessor

class User

  #calling attr accessor so we dont have to create getter and setter methods
  attr_accessor :name, :email
  def initialize(name, email)
    @name = name
    @email = email
  end

  def run
    puts "Lets run!"
  end

end

user = User.new("Jack", "Jack@jack.com")
puts "My user's name is #{user.name} and their email is #{user.email}"
user.name = "John"
user.email = "John@john.com"
puts "My users new name is #{user.name} and their email is #{user.email}"
