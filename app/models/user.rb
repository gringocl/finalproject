class User < ActiveRecord::Base
  has_secure_password
  has_many :posts

  validates :name, presence: true, length: {minimum: 3} 
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i}
end
