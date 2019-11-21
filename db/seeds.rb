# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Rental.destroy_all
Tool.destroy_all
User.destroy_all


# 2.times do
#   User.create!(name: Faker::FunnyName.name, address: Faker::Address.full_address, email: Faker::Internet.email, password: "123456")
# end

user = User.create!(email: 'user@user.com', password: '123456', name: Faker::FunnyName.name, address: '50 Bourke St Melbourne Australia')
user1 = User.create!(email: 'pickle@user.com', password: '123456', name: Faker::FunnyName.name, address: '500 Collins St Melbourne Australia')

Tool.create!(name: "JACK TROLLEY",
            description: "Blue jack trolley. Great for jacking stuff.",
            image: "https://www.tlib.brunswicktoollibrary.org/TL/toolPx/px/30742.jpg",
            condition: true,
            user: user,
            availability_status: true,
            price: 15,
            brand: "Orcon",
            condition_detail: "As new",
            tech_specs: "2000kg, Barcode 3165189955849, Part No 68616A1001, Product Length (mm)",
            parts_list: "some parts",
            category: "automotive")

Tool.create!(name: "ALUMINIUM A-FRAME LADDER",
            description: "A-FRAME ladder, perfect for peering over fences.",
            image: "https://www.tlib.brunswicktoollibrary.org/TL/toolPx/px/30719.jpg",
            condition: true,
            user: user1,
            availability_status: true,
            price: 18,
            brand: "Bailey",
            condition_detail: "As new",
            tech_specs: "Product Length (1800mm)",
            parts_list: "some parts",
            category: "Ladders")
