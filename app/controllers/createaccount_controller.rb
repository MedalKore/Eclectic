class CreateaccountController < ApplicationController

	def index
		@title = 'Create Account'
		
	end

	def create
		@title = 'Create Account'

		@username = params[:username]
		@password = params[:password]
		@email = params[:email]

		if @username
			@new_user = User.create(:username => '@username', :password => '@password', :email => '@email')			
			if @new_user
				redirect_to '/account/home'
				
			end
		
		else
			raise "Sorry, there was a problem with your account creation, please try again."	
		
		end
	end
end
