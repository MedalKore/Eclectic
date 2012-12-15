class AddAmountAndCustomMadeIdToBead < ActiveRecord::Migration
  def change
    add_column :beads, :amount, :integer
    add_column :beads, :custom_made_id, :integer
  end
end
