class HomeController < ApplicationController
 	


 	def index
  	@title = 'Home'
  	
  end

	def contact
		@title = 'Contact'
		
	end

	def about
		@title = 'About Us'
		
	end
	
end
