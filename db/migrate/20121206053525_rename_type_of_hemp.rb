class RenameTypeOfHemp < ActiveRecord::Migration
  def up
  	rename_column :hemps, :type, :type_of_hemp
  end

  def down

  end
end
