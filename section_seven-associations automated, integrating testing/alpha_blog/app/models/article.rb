class Article < ActiveRecord::Base
  # We discovered in our rails console that if you enter an empty article it will still register to the
  #database which is very bad. So the point of this model is to add validations to make sure that doesnt happen!

  #We also want to add length validation because if a title and or desacription is one character, that doesn't
  # make much sense.
  belongs_to :user
  validates :title, presence: true, length: { minimum: 3, maximum: 50}
  validates :description, presence: true, length: { minimum: 10, maximum: 300}
  validates :user_id, presence: true

end
