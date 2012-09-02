class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.integer :price
      t.boolean :part_of_set
      t.string :color_description
      t.integer :quantity, :null => true
      t.string :filename

      t.timestamps
    end
  end
end
