class Product < ActiveRecord::Base
  attr_accessible :category, :filename, :name, :price, :quantity, :gender, :subcategory
  has_many :order
  has_many :cart_items
  has_many :cart, :through => :cart_items

 

end
