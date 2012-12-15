class AddCustomMadeIdToHemp < ActiveRecord::Migration
  def change
    add_column :hemps, :custom_made_id, :integer
  end
end
