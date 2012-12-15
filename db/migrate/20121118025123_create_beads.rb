class CreateBeads < ActiveRecord::Migration
  def change
    create_table :beads do |t|
      t.boolean :main
      t.string :style
      t.string :color
      t.integer :price

      t.timestamps
    end
  end
end
