class ChangePriceType < ActiveRecord::Migration
  def up
  	change_column :products, :price, :float
  	change_column :beads, :price, :float
  	change_column :cart_items, :price, :float
  	change_column :hemps, :price, :float
  	change_column :knots, :price, :float
  end

  def down
  end
end
