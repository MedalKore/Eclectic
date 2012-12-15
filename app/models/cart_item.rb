class CartItem < ActiveRecord::Base
  attr_accessible :cart_id, :product_id, :price, :amount
  belongs_to :carts
  belongs_to :products

  def cart_item_filename(product_id)
		filename ||= Product.find(product_id)
		filename.filename		
	end

	def full_price
		amount * price
		
	end
end
