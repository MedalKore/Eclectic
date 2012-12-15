class AddFilename < ActiveRecord::Migration
  def up
  	add_column :hemps, :filename, :string
  	add_column :clasps, :filename, :string
  	add_column :pendants, :filename, :string
  	add_column :beads, :filename, :string
  	add_column :knots, :filename, :string
  end

  def down
  	remove_column :hemps, :filename, :string
  	remove_column :clasps, :filename, :string
  	remove_column :pendants, :filename, :string
  	remove_column :beads, :filename, :string
  	remove_column :knots, :filename, :string
  end
end
