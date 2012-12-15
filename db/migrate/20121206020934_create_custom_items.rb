class CreateCustomItems < ActiveRecord::Migration
  def change
    create_table :custom_items do |t|
    	t.integer :cart_id
    	t.integer :custom_made_id
    	t.float :price
    	

      t.timestamps
    end
  end
end
