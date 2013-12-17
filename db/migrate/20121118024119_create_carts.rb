class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
    	t.boolean :completed
      t.timestamps
    end
  end
end
