class AddCartIdAndProductIdAndCustomMadeIdAndPriceAndAmountToCartItems < ActiveRecord::Migration
  def change
    add_column :cart_items, :cart_id, :integer
    add_column :cart_items, :product_id, :integer
    add_column :cart_items, :custom_made_id, :integer
    add_column :cart_items, :price, :float
    add_column :cart_items, :amount, :integer
  end
end
