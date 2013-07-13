class AccountController < ApplicationController
  

  def home

  end

  def login
  	user = User.authenticate(:email => params[:email].permit!, :password => params[:password].permit!)
  	cookies.permanent[:auth_token] = user.auth_token
  end

  def edit
  	
  end

end
