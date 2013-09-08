class ApplicationController < ActionController::Base
  protect_from_forgery
	before_filter :newest_items, :except => {:controller => 'admin/admin'}
	before_filter :current_cart, :except => {:controller => 'admin/admin'}
	before_filter :last_item, :except => {:controller => 'admin/admin'}
	before_filter :clear_cart, only: {controller: :cart, action: :empty_cart}
	before_filter :admin?, only: {controller: 'admin/*'}

	def newest_items
		@new_products ||= Product.order('created_at DESC').limit(3)
	end

	def find_in_cart(pid)
		@item = @cart.cart_items.find_by(product_id: pid) unless @cart.nil?
	end
	
	def clear_cart
		session[:cart_id] = nil
	end

	def current_user
		@current_user ||= User.find_by(auth_token: (cookies[:auth_token] || session[:auth_token])) if cookies[:auth_token] || session[:auth_token]
	end
	helper_method :current_user

	def admin?
		@admin ||= Admin.find_by(auth_token: (cookies[:auth_token] || session[:auth_token])) if cookies[:auth_token] || session[:auth_token]
	end
	helper_method :admin?
	
	private

	def current_cart
		if session[:cart_id]
			@cart = Cart.find(session[:cart_id])
			session[:cart_id] = nil if @cart.completed?
		end
		if session[:cart_id].nil?
			@cart = Cart.create
			session[:cart_id] = @cart.id
		end
	end
	

	def last_item
		@item = @cart.cart_items.where(product_id: (params[:id]))
		@item = @item.to_json
	end
end
