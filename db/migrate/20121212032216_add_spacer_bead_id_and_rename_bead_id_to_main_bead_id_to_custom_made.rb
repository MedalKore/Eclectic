class AddSpacerBeadIdAndRenameBeadIdToMainBeadIdToCustomMade < ActiveRecord::Migration
  def change
    add_column :custom_mades, :spacer_bead_id, :integer
    rename_column :custom_mades, :bead_id, :main_bead_id
  end
end
