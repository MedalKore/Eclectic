class CustomController < ApplicationController

	
	def index
		@custom_example = Product.find_by_example(:true)
	end
	
	def category_pick
		session[:category] = params[:pick]
		@category_pick = session[:category]
		if same_or_new
			@custom = sessions[:custom] = CustomMade.create
		else
			add_hemp_and_length
		end
	end

	def add_hemp_and_length
		@custom.create_new_custom(@cart)
		@custom.update_attributes(:category =>  @category)
		@hemp = Hemp.all
		@length = Length.where(:category => @category.capitalize).order('id ASC')
		render "custom/#{@category}/add_hemp"
	end

	def add_knot
		@category = session[:category]
		@custom.update_attributes(:hemp_id => params[:id], :length_id => params[:custom_made])
		@knots = Knot.where(:category => @category.capitalize)
		render "custom/#{@category}/add_knot"
	end

	def add_main_beads
		@category = session[:category]
		@custom.update_attributes(:knot_id => params[:id])
		@main_beads = Bead.where(:main => true).order('style ASC')
		render "custom/#{@category}/add_main_beads"
	end

	def add_spacer_beads
		@category = session[:category]
		@custom.update_attributes(:main_bead_id => params[:id], :main_bead_amount => params[:amount])
		@spacer_beads = Bead.where(:main => false).order('style ASC')
		render "custom/#{@category}/add_spacer_beads"
	end

	def add_pendant
		@category = session[:category]
		@custom.update_attributes(:spacer_bead_id => params[:id], :spacer_bead_amount => params[:amount])
		@pendants = Pendant.all
		render "custom/#{@category}/add_pendant"
	end

	def add_clasp
		@category = session[:category]
		@custom.update_attributes(:pendant_id => params[:id])
		@clasps = Clasp.all

		render "custom/#{@category}/add_clasp"
	end

	def review_custom
		@category = session[:category]
		@custom.update_attributes(:clasp_id => params[:id])
		render "/custom/#{@category}/review_custom"
	end

	private

	def same_or_new
		current = CustomItem.first
		@custom == current

	end

	

end
