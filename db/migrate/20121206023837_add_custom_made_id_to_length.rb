class AddCustomMadeIdToLength < ActiveRecord::Migration
  def change
    add_column :lengths, :custom_made_id, :integer
  end
end
