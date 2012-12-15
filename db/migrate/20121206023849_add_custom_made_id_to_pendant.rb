class AddCustomMadeIdToPendant < ActiveRecord::Migration
  def change
    add_column :pendants, :custom_made_id, :integer
  end
end
