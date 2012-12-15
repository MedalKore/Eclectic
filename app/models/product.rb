class Product < ActiveRecord::Base
  attr_accessible :category, :example, :filename, :name, :part_of_set, :price, :quantity, :gender, :subcategory
  has_many :order
  has_many :favorite
  has_many :cart_items
  has_many :cart, :through => :cart_items

 

end
