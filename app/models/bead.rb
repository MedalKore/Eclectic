class Bead < ActiveRecord::Base
  attr_accessible :color, :main, :price, :style, :filename, :amount
	belongs_to :custom_made
end
