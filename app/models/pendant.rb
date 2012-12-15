class Pendant < ActiveRecord::Base
  attr_accessible :color, :price, :style, :filename
  belongs_to :custom_made

end
