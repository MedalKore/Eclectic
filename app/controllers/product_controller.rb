class ProductController < ApplicationController
	
	def index
		@title = 	'Products'
		@all_products = Product.order('id ASC')
	end

	def show
			@product = Product.find(params[:id])
	end

	def find_all
		# debugger
		@category = params[:category].singularize
		@category = legit_category
		if @category
			if @category == "accessory"
				accessories
				render 'category'
			else @category == 'necklace' || 'bracelet' || 'anklet'
				@all_products = Product.where(category: @category)
				render 'index'
			end
		else
			render file: "#{Rails.root}/public/404", layout: false, status: :not_found
		end
	end


	def category
		# debugger
		@category = params[:category].singularize
		@category = legit_category
		if @category
			if @category == "accessory"
				@products = accessories
			elsif @category == 'necklace' || 'bracelet' || 'anklet'
				call_for_category
			else
				render file: "#{Rails.root}/public/404", layout: false, status: :not_found
			end
		else
			render file: "#{Rails.root}/public/404", layout: false, status: :not_found
		end
	end

	def friendship
		@title = 'Friendship'
		@products = Product.find_by(category: :friendship)
		render 'category'
	end

	def survivor
		@title = 'Survivor Bracelets'
		@products = Product.find_by(category: 'survivor bracelet')
		render 'category'
	end

	def add_to_cart
		id = params[:id]
		@chosen_product = Product.find(id)
		unless @cart.cart_items.where(product_id: id).empty?
			flash.now[:item_add] = "That item is already in your cart."
			return
		end
		if request.xhr?
			item = @cart.add_product(id)
			@item = item.to_json
			flash.now[:item_add] = "Added #{@chosen_product.name}"
		elsif request.post?
			@item = @cart.add_product(id)
			flash[:item_add] = "Added #{@chosen_product.name}"
			format.html { redirect_to product_path}
		end
	end

	private

	def accessories
		@title = 'Accessories'
		if params[:sub_gender].nil?
			@products = Product.where(category: @category)
		else
			@sub_gender = params[:sub_gender].singularize
			@sub_gender = legit_subcategory
			Product.where(subcategory: @sub_gender)
		end
	end

	def legit_category
		Product.category_options.detect do |cat|
			cat == @category
		end
	end

	def legit_subcategory
		Product.subcategory_options.detect do |subcat|
			subcat == @sub_gender
		end
	end

	def legit_gender
		Product.gender_options.detect do |gender|
			gender == @sub_gender
		end
	end

	def call_for_category
		@sub_gender = params[:sub_gender] unless params[:sub_gender].nil?
		@sub_gender = legit_gender
		if @sub_gender
			@products = Product.where("category = :category AND gender = :gender", {category: @category, gender: @sub_gender})
		else
			@products = Product.where(category: @category)
		end
	end


end
