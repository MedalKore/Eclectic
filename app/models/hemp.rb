class Hemp < ActiveRecord::Base
  attr_accessible :price, :type, :filename
  belongs_to :custom_made
end
