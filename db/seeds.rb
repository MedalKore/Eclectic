# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(firstname: "Bro", lastname: "Seph", email: "broseph@example.com", password: "password", password_confirmation: "password")

Admin.create(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

3.times do |n|
	Product.create(name: "Product #{n}", category: "Necklace", price: "25.00", description: "Description about necklace goes here.", quantity: "1", gender: 'Men')
end


4.times do |n|
	Product.create(name: "Product #{n}", category: "Bracelet", price: "15.00", description: "Description about bracelet goes here.", quantity: "1")
end

4.times do |n|
	Product.create(name: "Product #{n}", category: "Anklet", price: "15.00", description: "Description about anklet goes here.", quantity: "1")

end

4.times do |n|
	Product.create(name: "Product #{n}", category: "Survivor Bracelet", price: "15.00", description: "Description about Survivor Bracelet goes here.", quantity: "1")

end

4.times do |n|
	Product.create(name: "Product #{n}", category: "Accessories", price: "15.00", description: "Description about accessories goes here.", quantity: "1", subcategory: "keychain")
end


4.times do |n|
	Product.create(name: "Product #{n}", category: "Accessories", price: "10.00", description: "Description about necklace goes here.", quantity: "1", subcategory: 'earring')
end

4.times do |n|
	Product.create(name: "Product #{n}", category: "Necklace", price: "25.00", description: "Description about necklace goes here.", quantity: "1", gender: 'Women')
end

