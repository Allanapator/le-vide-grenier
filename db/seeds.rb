
Product.destroy_all

Product.create!(name: "Chaise", category: "Bois", price_cents: 50, quantity: "2", user_id: User.first.id)
Product.create!(name: "Tableau", category: "Bois", price_cents: 50, quantity: "2", user_id: User.first.id)
Product.create!(name: "Guitare", category: "Bois", price_cents: 50, quantity: "2", user_id: User.first.id)
Product.create!(name: "Sculpture", category: "Bois", price_cents: 50, quantity: "2", user_id: User.first.id)