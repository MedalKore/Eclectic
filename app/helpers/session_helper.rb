module SessionHelper


	def order_cart id
		array_of_cart_products = []
		cart = Cart.find(id)
		array_of_cart_item_objects = cart.cart_items.product
		array_of_cart_item_objects.each do |cart_item_object|
			cart_item_object.each do |cart_item|
				array_of_cart_products << Product.find(cart_item.product_id)
			end
		end
		yield array_of_cart_products
	end

	def order_total order
		cart = Cart.find(order.cart_id)
		cart.total
	end


end
