class AddPremadeToProducts < ActiveRecord::Migration
  def change
    add_column :products, :premade, :boolean
  end
end
