class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
<<<<<<< HEAD
      t.integer :user_ID
      t.integer :product_ID
=======
      t.integer :user_id
      t.integer :product_id
>>>>>>> Reinitialized repo because removing a bunch of large old files is tedious.

      t.timestamps
    end
  end
end
