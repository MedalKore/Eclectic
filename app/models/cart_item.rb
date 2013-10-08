class CartItem < ActiveRecord::Base
  belongs_to :carts
  belongs_to :products
  belongs_to :orders

  def cart_item_product(product_id)
		filename = Product.find(product_id)	
	end

	def name(product_id)
		name= Product.find(product_id)
		name.name
	end
	
	def full_price
		amount * price
	end

end
