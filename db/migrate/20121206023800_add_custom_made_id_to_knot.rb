class AddCustomMadeIdToKnot < ActiveRecord::Migration
  def change
    add_column :knots, :custom_made_id, :integer
  end
end
