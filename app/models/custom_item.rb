class CustomItem < ActiveRecord::Base
  attr_accessible :cart_id, :custom_made_id, :price, :amount
  belongs_to :custom_mades
  belongs_to :carts

end
