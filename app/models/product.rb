class Product < ActiveRecord::Base
  attr_accessible :category, :color_description, :filename, :name, :part_of_set, :price, :quantity, :gender, :premade, :subcategory
  belongs_to :order
  belongs_to :favorite

  def page
  	
  end

end
