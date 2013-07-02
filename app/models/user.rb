class User < ActiveRecord::Base
  attr_accessible :username, :password_digest, :firstname, :lastname, :email
	has_many :orders
	validates :username, :presence => true
	validates :password_digest, :presence => true
	validates :firstname
	validates :lastname
	validates :email, :presence => true

	has_secure_password
end
