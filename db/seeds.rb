# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Rental.destroy_all

2.times do
  User.create!(name: Faker::FunnyName.name, address: Faker::Address.full_address, email: Faker::Internet.email, password: "123456")
end

Tool.create!(name: "JACK TROLLEY",
            description: "Blue jack trolley. Great for jacking stuff.",
            image: "https://www.tlib.brunswicktoollibrary.org/TL/toolPx/px/30742.jpg",
            condition: true,
            user_id: 3,
            availability_status: true,
            price: 15,
            brand: "Orcon",
            condition_detail: "As new",
            tech_specs: "2000kg, Barcode 3165189955849, Part No 68616A1001, Product Length (mm)",
            parts_list: "",
            category: "automotive")

Tool.create!(name: "ALUMINIUM A-FRAME LADDER",
            description: "A-FRAME ladder, perfect for peering over fences.",
            image: "https://www.tlib.brunswicktoollibrary.org/TL/toolPx/px/30719.jpg",
            condition: true,
            user_id: 4,
            availability_status: true,
            price: 18,
            brand: "Bailey",
            condition_detail: "As new",
            tech_specs: "Product Length (1800mm)",
            parts_list: "",
            category: "Ladders")

Tool.create!(name: "Steam Cleaner",
            description: "Sturdy steam cleaner to remove those stubborn blood stains.",
            image: "https://images.unsplash.com/photo-1527515637462-cff94eecc1ac?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
            condition: true,
            user_id: 2,
            availability_status: true,
            price: 18,
            brand: "Mile",
            condition_detail: "As new",
            tech_specs: "Product Length (1800mm)",
            parts_list: "",
            category: "Cleaning")
