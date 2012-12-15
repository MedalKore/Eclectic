class CreateHemps < ActiveRecord::Migration
  def change
    create_table :hemps do |t|
      t.string :type
      t.integer :price

      t.timestamps
    end
  end
end
