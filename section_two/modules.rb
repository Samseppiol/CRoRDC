#a module is a collection of behaviours that other classes can use via mixins.
#but you can not have an object of a module ie an instance variable
module Destructable
  def destroy(anyobject)
    puts "I will destroy the object!!!!"
  end
end

class User
  #For a module to be used it has to be included!
  include Destructable

  attr_accessor :name, :email

  def initialize(name, email)
    @name = name
    @email = email
  end

  def run
    puts "Im on a boat"
  end

  #Lets create a class method which doesnt have to be specifically called. we use .self for this

  def self.test_method
    puts " Tell me your name "
    name = gets.chomp
    puts "thanks #{name}"
  end

end

#All three of these classes inherit from the master user class

class Buyer < User

  def run
    puts "This is gonna change things, in the buyer class"
  end
end

class Seller < User

  def run
    puts "This is the seller class"
  end
end

class Admin < User

  def run
    puts "This is the admin class"
  end
end


user = User.new("Jack", "Jack@jack.com")
user.destroy("myname")
