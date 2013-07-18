require 'spec_helper'

describe Cart do

	describe "creates a Cart" do 
		let(:cart) { Cart.create }

		it "creates a new Cart object" do
			expect(cart.id).to eq 1
		end

		# it "adds a new product to the current cart" do
		# 	expect(cart.add_product(1)).to eq 1
		# end

	end

end