class ApplicationController < ActionController::Base
  protect_from_forgery
	before_filter :newest_items
	before_filter :initialize_cart, :except => {:controller => :admin}
	before_filter :last_item, :except => {:controller => :admin}

	def newest_items
		@new_products ||= Product.order('created_at DESC').limit(3)
	end

	def most_recent_viewed
		
	end

	def find_in_cart(pid)
		@item = @cart.cart_items.find_by_product_id(pid)
		
	end

	

	

	private

	def initialize_cart
		if session[:cart_id]
			@cart = Cart.find(session[:cart_id])
		else
			@cart = Cart.create
			session[:cart_id] = @cart.id
		end
	end



	def clear_custom
		
	end
	def clear_cart
		
	end

	def last_item
		@item = @cart.cart_items.find_all_by_product_id(params[:id])
		@item = @item.to_json
	end
end
