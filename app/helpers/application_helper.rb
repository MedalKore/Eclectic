module ApplicationHelper

	def word_wrap(text, options = {})
	  line_width = options.fetch(:line_width, 80)
	  line_break = options.fetch(:line_break, "\n")
	  text.split("\n").collect do |line|
	    line.length > line_width ? line.gsub(/(.{1,#{line_width}})(\s+|$)/, "\\1#{line_break}").strip : line
	  end * "\n"
	end

	def logged_in?
		@current_user ? true : false
	end

	def remove_from_cart_link(product_id, options = {})
		link_to '(remove)', remove_path(:id => product_id), options
	end


end
