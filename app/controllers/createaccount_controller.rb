class CreateaccountController < ApplicationController

	def index
		@title = 'Create Account'
		
	end

	def create
		@email, @password, @password_confirmation = params[:email], params[:password], params[:password_confirmation]
		@firstname, @lastname = params[:firstname], params[:lastname]
		@user = User.create(
      email: @email,
      password: @password,
      password_confirmation: @password_confirmation,
      firstname: @firstname,
      lastname: @lastname)
		if @user.save
			bingo!("signed_up")
			sign_in @user
			flash[:notice] = "Success!"
			redirect_to :account
		else
			flash[:error] = @user.errors
			redirect_to :create_account
		end
	end

	
end
