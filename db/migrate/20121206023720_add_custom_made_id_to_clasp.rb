class AddCustomMadeIdToClasp < ActiveRecord::Migration
  def change
    add_column :clasps, :custom_made_id, :integer
  end
end
