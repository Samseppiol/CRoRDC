require 'pp'
#Use the user class I have built
require_relative 'user'

user = User.new 'Jack@jack.com', 'Jack'
user2 = User.new 'John@john.com', 'John'

pp user, user2

user.save
user2.save
