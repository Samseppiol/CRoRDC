require 'json'

class User

  attr_accessor :email, :name, :permissions

  #The *args is a splat argument and it takes it in to an array. For example email will be args[0]
  def initialize(*args)
    @email = args[0]
    @name = args[1]
    #Permissions will be pulling in a class method we define later
    @permissions = User.permissions_from_template
  end

  def self.permissions_from_template
    file = File.read 'user_permissions_template.json'
    #this will create a json object and push in what we have brought in
    JSON.load(file, nil)
    #now we have to save it to a new file
  end

  def save
    #use .to_json to convert to a json file
    self_json = {email: @email, name: @name, permissions: @permissions}.to_json
    #append/add to the users.json file
    open('users.json', 'a') do |file|
      file.puts self_json
    end
  end

end
