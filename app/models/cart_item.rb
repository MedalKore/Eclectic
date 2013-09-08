class CartItem < ActiveRecord::Base
  belongs_to :carts
  belongs_to :products

  def cart_item_filename(product_id)
		filename ||= Product.find(product_id)
		filename.filename		
	end

	def name(product_id)
		name= Product.find(product_id)
		name.name
	end

	def full_price
		amount * price
		
	end
end
