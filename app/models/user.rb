class User < ActiveRecord::Base
   attr_accessible :title, :body
	has_many :orders
	has_many :favorites
	validates :username, :presence => true
	validates :password, :presence => true
	validates :firstname
	validates :lastname
	validates :email, :presence => true

end
