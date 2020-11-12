User.destroy_all
Product.destroy_all

User.create!(name: "Admin", email:"admin@adming.fr", password: "adminadmin")

Product.create!(name: "Chaise", category: "Bois", price: "50e", quantity: "2", user_id: 1)