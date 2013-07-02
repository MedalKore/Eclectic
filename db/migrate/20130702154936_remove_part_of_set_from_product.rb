class RemovePartOfSetFromProduct < ActiveRecord::Migration
  def up
  	remove_column :products, :part_of_set
  end

  def down
  end
end
