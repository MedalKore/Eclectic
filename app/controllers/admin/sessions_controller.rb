class Admin::SessionsController < ApplicationController
  layout 'admin/layouts/application'

  def index
    @title = admin? ? 'Welcome' : 'Sign In'
    if admin?
      render 'index'
    else
      render 'admin/layouts/log_in'
    end
  end

  def create
    @admin = Admin.find_by(email: params[:log_in][:email])
    if @admin && @admin.authenticate(params[:log_in][:password])
      # debugger
      sign_in @admin
      flash[:notice] = 'Log in successful.'
      redirect_to :admin_products
    else
      flash[:error] = "Log in failed. Please try again."
      redirect_to :admin
    end
  end

  def sign_in(user)
    session[:auth_token] = user.auth_token
    admin = user
  end

  def admin=(user)
    @admin = user
  end

  def destroy
    if session[:auth_token]
      session[:auth_token] = nil
    else
      cookies.delete(:auth_token)
    end
    redirect_to :admin
  end
end
