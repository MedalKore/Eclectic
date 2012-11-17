class ApplicationController < ActionController::Base
  protect_from_forgery
	before_filter :newest_items
	

	def newest_items
		@new_products ||= Product.order('created_at DESC').limit(3)
	end

	def most_recent_viewed
		
	end
end
