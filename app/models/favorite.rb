class Favorite < ActiveRecord::Base
  attr_accessible :product_ID, :user_ID
  belongs_to :user
end