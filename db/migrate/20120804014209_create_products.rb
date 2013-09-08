class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.integer :price
<<<<<<< HEAD
      t.boolean :part_of_set
      t.string :color_description
=======
      t.string :description
>>>>>>> Reinitialized repo because removing a bunch of large old files is tedious.
      t.integer :quantity, :null => true
      t.string :filename

      t.timestamps
    end
  end
end
