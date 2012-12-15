class Knot < ActiveRecord::Base
  attr_accessible :price, :style, :filename, :category
  belongs_to :custom_made
end
