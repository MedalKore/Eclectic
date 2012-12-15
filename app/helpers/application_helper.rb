module ApplicationHelper

	def add_product_link

		
	end

	def remove_from_cart_link(product_id)
		
		link_to '(remove)', remove_path(:id => product_id), :remote => true, :class => "remove_#{product_id}", :method => 'post'

	end

	def clear_cart_link


		
	end


end
