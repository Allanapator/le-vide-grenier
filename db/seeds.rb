
Product.destroy_all

Product.create!(name: "Joconde", category: "Tableau", price_cents: 500000000, quantity: "2", user_id: User.all.sample.id)
Product.create!(name: "Vénus de Milo", category: "Sculpture", price_cents: 85000000, quantity: "2", user_id: User.all.sample.id)
Product.create!(name: "Autoportrait", category: "Tableau", price_cents: 50000, quantity: "2", user_id: User.all.sample.id)
Product.create!(name: "Chaise artisanale", category: "Bois", price_cents: 40000, quantity: "2", user_id: User.all.sample.id)