class CreateaccountController < ApplicationController

	def index
		@title = 'Create Account'
		
	end

	def create
		@password = params[:password]
		@password_confirmation = params[:password_confirmation]
		@email = params[:email]
		@firstname = params[:firstname]
		@lastname  = params[:lastname]

		if @email
			@user = User.create(:email => @email, :password => @password, password_confirmation: @password_confirmation, firstname: @firstname, lastname: @lastname)
			if @user
				bingo!("signed_up")
				@current_user = @user
				flash[:notice] = "Success!"
				redirect_to :root
			end
		else
			flash[:error] = "Sorry, there was a problem with your account creation, please try again."
		end
	end

	
end
