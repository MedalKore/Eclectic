class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_ID
      t.integer :product_ID

      t.timestamps
    end
  end
end
