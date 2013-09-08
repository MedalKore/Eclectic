class CreateCartItems < ActiveRecord::Migration
  def change
    create_table :cart_items do |t|
    	t.integer :cart_id
    	t.integer :product_id
<<<<<<< HEAD
    	t.integer :custom_made_id
=======
>>>>>>> Reinitialized repo because removing a bunch of large old files is tedious.
    	t.integer :price
    	t.integer :amount

      t.timestamps
    end
  end
end
