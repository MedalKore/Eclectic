class ProductController < ApplicationController
	
	def index
		@title = 	'Products'
		@all_products = Product.all
	end

	def show
			@product = Product.find(params[:id])
	end

	def find_all
		@category = params[:category].capitalize.singularize
		@title = @category
		@all_products = Product.where(:category => @category)
		render 'index'
	end

	def add_to_cart
		@chosen_product = Product.find(params[:id])

		if request.xhr?
			item = @cart.add_product(params[:id])

			@item = item.to_json
			flash.now[:item_add] = "Added #{@chosen_product.name}"

		elsif request.post?
			@item = @cart.add_product(params[:id])
			flash[:item_add] = "Added #{@chosen_product.name}"
			format.html { redirect_to product_path}
		end
	end

	def category
		# debugger
		@category = params[:category].capitalize
		@title = @category
		@category = @category.singularize if @category == 'Bracelets' || 'Anklets' || "Survivorbracelets" || "Accessories"
		@gender = params[:gender].capitalize unless @gender.nil?
		call_for_category
		
	end

	def accessories
		@title = 'Accessories'
		@accessories = Product.where()

	end

	def survivor
		@title = 'Survivor Bracelets'


	end

	private

	def call_for_category
		if @gender
			@products = Product.where("category = :category AND gender = :gender", {:category => @category, :gender => @gender})
		else
			@products = Product.where("category = :category",{:category => @category})
		end
	end


end
