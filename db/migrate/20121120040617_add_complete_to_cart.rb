class AddCompleteToCart < ActiveRecord::Migration
  def change
    add_column :carts, :complete, :boolean
  end
end
