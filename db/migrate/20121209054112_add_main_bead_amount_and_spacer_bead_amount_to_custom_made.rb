class AddMainBeadAmountAndSpacerBeadAmountToCustomMade < ActiveRecord::Migration
  def change
    add_column :custom_mades, :main_bead_amount, :integer
    add_column :custom_mades, :spacer_bead_amount, :integer
  end
end
