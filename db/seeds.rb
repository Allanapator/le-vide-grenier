
Product.destroy_all

Product.create!(name: "Chaise", category: "Bois", price: "50e", quantity: "2", user_id: User.first.id)
Product.create!(name: "Tableau", category: "Bois", price: "50e", quantity: "2", user_id: User.first.id)
Product.create!(name: "Guitare", category: "Bois", price: "50e", quantity: "2", user_id: User.first.id)
Product.create!(name: "Sculpture", category: "Bois", price: "50e", quantity: "2", user_id: User.first.id)