class CartController < ApplicationController
	before_filter {|c| c.find_in_cart(params[:id])}

	def index
		@referer = request.referer

	end



	def remove_from_cart
		id = params[:id]
		@chosen_product = Product.find(id)
		@item = @cart.remove(id)
		if request.xhr?
			flash.now[:item_removed] = "Removed #{@chosen_product.name}"
		elsif request.post?
			flash.now[:item_removed] = "Removed #{@chosen_product.name}"
			format.html { redirect_to index}
		end
	end

	protected

	def to_rails_hash
		
	end
end
