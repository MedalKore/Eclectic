class Admin::AdminController < ApplicationController
  layout 'admin/layouts/application'
  skip_before_filter :newest_items
  skip_before_filter :current_cart
  skip_before_filter :last_item
  before_filter :admin?

  def index
  	@admin_users = Admin.all
  end

  def new
  	@admin_user = Admin.new
  end

  def create
  	Admin.create(params.require(:admin).permit!)
    redirect_to :admin_users
  end

  def update
  
  end

  def delete
  	begin
  		Admin.delete!(params[:admin_user_id])
  		redirect_to action: :index
  		flash[:notice] = 'Successfully deleted admin.'
  		return
  	catch e
  		flash[:error] = e.message
  		redirect_to :admin_users
  	end
  end
end
