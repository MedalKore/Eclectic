class AddCategory < ActiveRecord::Migration
  def up
  	add_column :knots, :category, :string
  	add_column :lengths, :category, :string
  end

  def down
  end
end
