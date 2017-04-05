#Object oriented programming is a programming paradigm that uses objects
# and their interactions to design and program applications.

#A class is a blueprint that describes the state and behaviour that the objects of the
# class all share. A class can be used to create many objects. Objects created at runtime
#from a class are called instances of that particular class.

#For example:

class User

  #We have to call the initialize method every time. Pass in whatever we want the class to do
  #Eg we want our user to have a name, so we pass in name and create an instance variable with the '@' symbol
  def initialize(name)
    @name = name
  end

  def run
    puts "Running... RUNNNNNIIIING"
  end

    #getter method
  def display_name
    @name
  end

  #setter name, changing the name
  def change_name=(name)
    @name = name
  end

end

#Caling the class
user = User.new("Jack")

#Calling the display name method we created in our class on our class variable
puts user.display_name
#Calling change name method we created
user.change_name = "John"
#Calling our method again to see if the change name method worked
puts user.display_name
