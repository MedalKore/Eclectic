class RemoveFilenameFromProduct < ActiveRecord::Migration
  def change
  	remove_column :products, :filename
  end
end
