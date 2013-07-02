class RemovePremadeFromProduct < ActiveRecord::Migration
  def up
  	remove_column :products, :premade
  end

  def down
  end
end
