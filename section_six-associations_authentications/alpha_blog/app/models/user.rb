class User <ActiveRecord::Base
  validates :username, presence: true, uniqueness: { case_sensitive: false},
            length: { minimum: 4, maximum: 20 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i 
  validates :email, presence: true, length: { maximum: 100},
            uniqueness: { case_sensitive: false},
            format: { with: VALID_EMAIL_REGEX }

end
