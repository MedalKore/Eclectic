class AccountController < ApplicationController
  

  def home

  end

  def login
  	user = User.where(:email => params[:email].permit!
  	user = user.authenticate(params[:password].permit!)
  	cookies.permanent[:auth_token] = user.auth_token
  end

  def edit
  	
  end

end
