class AddProductImageToProduct < ActiveRecord::Migration
  def change
  	add_attachment :products, :product_image
  end
end
