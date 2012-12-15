class CustomMade < ActiveRecord::Base
  attr_accessible :category, :hemp_id, :clasp_id, :pendant_id, :main_bead_id, :spacer_bead_id, :knot_id, :length_id, :cart_id, :main_bead_amount, :spacer_bead_amount
  has_many :custom_items
  has_many :cart, :through => :custom_items
  has_one :hemp
  has_one :clasp
  has_one :pendant
  has_one :knot
  has_one :length
  has_many :bead
  
  def create_new_custom(cart)
  		custom_items.first_or_create(:cart_id => cart.id, :custom_made_id => self.id)
  	
  end


  def self.add_hemp

		
	end

	def self.add_length
		
	end

	def self.add_knot
		
		
	end

	def self.add_beads

		
	end

	def self.add_pendant
		
	end

	def self.add_clasp

		
	end

end
