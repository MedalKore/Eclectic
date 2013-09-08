class SessionController < ApplicationController

  def index
    @title = current_user ? 'Welcome' : 'Sign In'
    if current_user
      render 'update'
    else
      render 'new'
    end
  end

  def create
    @current_user = User.find_by(email: params[:log_in][:email])
    if @current_user && @current_user.authenticate(params[:log_in][:password])
      sign_in @current_user
      flash[:notice] = 'Log in successful.'
      redirect_to :root
    else
      flash[:error] = "Log in failed. Please try again."
      redirect_to :log_in
    end
  end

  def sign_in(user)
    cookies.permanent[:auth_token] = user.auth_token
    current_user = user
  end

  def current_user=(user)
    @current_user = user
  end

  def destroy
    if session[:user_id]
      session[:user_id] = nil
    else
      cookies.delete!
    end
  end

end
