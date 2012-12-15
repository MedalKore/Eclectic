class AddExampleToProduct < ActiveRecord::Migration
  def change
    add_column :products, :example, :boolean
  end
end
