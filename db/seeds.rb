# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Tool.destroy_all
Rental.destroy_all

2.times do
  User.create!(name: Faker::FunnyName.name, address: Faker::Address.full_address, email: Faker::Internet.email, password: "123456")
end

Tool.create!(name: "CIRCULAR SAW",
            description: "The smallest professional universal saw.",
            image: "https://www.totaltools.com.au/media/catalog/product/cache/ecd051e9670bd57df35c8f0b122d8aea/1/3/133700-bosch-saw-circular-85mm-12v-skin-only-hero2-06016a1001.jpg",
            condition: true,
            user_id: 11,
            availability_status: true,
            price: 10,
            brand: "Bosch",
            condition_detail: "As new",
            tech_specs: "Voltage  12V, Barcode 3165140755849, Part No 06016A1001, Product Length (mm)",
            parts_list: "LED Light",
            category: "Carpentry")

Tool.create!(name: "JACK TROLLEY",
            description: "Blue jack trolley. Great for jacking stuff.",
            image: "https://www.tlib.brunswicktoollibrary.org/TL/toolPx/px/30742.jpg",
            condition: true,
            user_id: 12,
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
            user_id: 11,
            availability_status: true,
            price: 18,
            brand: "Bailey",
            condition_detail: "As new",
            tech_specs: "Product Length (1800mm)",
            parts_list: "",
            category: "Ladders")
