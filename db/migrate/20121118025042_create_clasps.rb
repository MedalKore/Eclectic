class CreateClasps < ActiveRecord::Migration
  def change
    create_table :clasps do |t|
      t.string :style
      t.float :price

      t.timestamps
    end
  end
end
