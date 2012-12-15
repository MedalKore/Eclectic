class CreateCustomMades < ActiveRecord::Migration
  def change
    create_table :custom_mades do |t|
      t.string :category
      t.integer :hemp_id
      t.integer :clasp_id
      t.integer :pendant_id
      t.integer :bead_id
      t.integer :knot_id
      t.integer :length_id

      t.timestamps
    end
  end
end
