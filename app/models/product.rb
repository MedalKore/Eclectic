class Product < ActiveRecord::Base
  attr_accessible :category, :color_description, :filename, :name, :part_of_set, :price, :quantity
end
