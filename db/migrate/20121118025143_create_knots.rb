class CreateKnots < ActiveRecord::Migration
  def change
    create_table :knots do |t|
      t.string :style
      t.integer :price

      t.timestamps
    end
  end
end
