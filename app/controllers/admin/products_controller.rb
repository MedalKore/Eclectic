class Admin::ProductsController < ApplicationController
  layout 'admin/layouts/application'
  before_filter { |c| redirect_to :admin unless c.admin?}

  def index
      column = params[:order]
      @products = ::Product.order(order_of_products(column))
  end

  def new
    @product = Product.new
  end

  def destroy
  	@product = find_product
  	if @product.destroy
  		flash.now[:notice] = "#{@product.name} was deleted successfully."
  		redirect_to request.referrer
  	end
  end

  def create
    Product.category_options << params[:category].downcase.singularize unless params[:category] && Product.category.include?(params[:category])
    Product.subcategory_options << params[:subcategory].downcase.singularize unless params[:subcategory] && Product.subcategory_options.include?(params{:subcategory})
    @product = Product.create(params.require(:product).permit!)
    if @product.save
      flash.now[:notice] = "#{@product.name} was created successfully."
      redirect_to :admin_products
    else
      flash.now[:error] = 'Something went wrong. Please try again or contact your site administrator(Try again first please).'
      redirect_to :admin_new_product
    end
  end

  def edit
  	find_product
  end

  def update
  	find_product
  	@product.update_attributes params.require(:product).permit!
  	if @product.save
  		flash.now[:notice] = "#{@product.name} was updated successfully."
  		redirect_to :admin_products
  	else
  		flash.now[:error] = 'Something went wrong. Please try again or contact your site administrator(Try again first please).'
  		redirect_to request.referrer
  	end
  end

  private

  def find_product
  	product_id = params[:product_id]
  	@product = Product.find(product_id)
  end

  def order_of_products(column)
  	order = column ? column.strip : 'id'
  	order += " ASC"
  end
end
