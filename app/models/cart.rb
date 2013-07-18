class Cart < ActiveRecord::Base
  attr_accessible :complete
  has_many :cart_items
  has_many :products, :through => :cart_items
  belongs_to :orders

  def add_product(product_id)
  	item = cart_items.find_all_by_product_id(product_id)
  	product = Product.find(product_id)

      if item.size < 1
    		ci = cart_items.create(:product_id => product_id,
    														:amount => 1,
    														:price => product.price)
    	else
    		ci = item.first
    		ci.update_attribute(:amount, ci.amount + 1)
    	end

  	ci
  end

  def remove(product_id)
  	ci = cart_items.find_by_product_id(product_id)
    if !ci.nil?
  	 ci.amount > 1 ? ci.update_attribute(:amount, ci.amount - 1) : CartItem.destroy(ci.id)
    end
    if CartItem.find_by_product_id(product_id).nil?
      ci = nil
    end

    ci
  end

  def total
  	cart_items.inject(0) {|sum, n| n.price * n.amount + sum}
  end



end
