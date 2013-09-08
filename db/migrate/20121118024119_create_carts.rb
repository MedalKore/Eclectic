class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
<<<<<<< HEAD

=======
    	t.boolean :completed
>>>>>>> Reinitialized repo because removing a bunch of large old files is tedious.
      t.timestamps
    end
  end
end
