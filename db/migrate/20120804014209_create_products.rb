class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.integer :price
      t.string :description
      t.integer :quantity, :null => true
      t.string :filename

      t.timestamps
    end
  end
end
