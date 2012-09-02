class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :user_ID
      t.integer :product_ID

      t.timestamps
    end
  end
end
