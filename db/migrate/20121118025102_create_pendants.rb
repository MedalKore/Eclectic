class CreatePendants < ActiveRecord::Migration
  def change
    create_table :pendants do |t|
      t.string :style
      t.string :color
      t.float :price

      t.timestamps
    end
  end
end
