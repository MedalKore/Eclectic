class Product < ActiveRecord::Base
  has_many :cart_items
  has_many :cart, :through => :cart_items

  has_attached_file :product_image,
	  styles: {thumbnail: 'x100', small: 'x150', original: 'x400'},
	  url: 'photos/:class/:attachment/:style/:basename.:extension',
	  path: ":rails_root/app/assets/images/photos/:class/:attachment/:style/:basename.:extension"

	  cattr_reader :category_options, :subcategory_options, :gender_options
	  @@category_options = ['necklace', 'bracelet', 'anklet', 'survivor bracelet', 'accessory']
	  @@subcategory_options = ['keychain', 'earring']
	  @@gender_options = ['men', 'women']
end
