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

puts "Creating users...."

user = User.create!(email: 'user@user.com', password: '123456', name: Faker::FunnyName.name, address: '50 Bourke St Melbourne Australia')
user1 = User.create!(email: 'user1@user.com', password: '123456', name: Faker::FunnyName.name, address: '110 Wattletree Rd Malvern Australia')
user2 = User.create!(email: 'user2@user.com', password: '123456', name: Faker::FunnyName.name, address: '180 St Kilda Rd Melbourne Australia')
user3 = User.create!(email: 'user3@user.com', password: '123456', name: Faker::FunnyName.name, address: '31 Oxford St West Footscray Australia')


puts "Users created! Now creating tools..."


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

Tool.create!(name: "ONE+ IMPACT WRENCH",
            description: "This tool features a 3-speed selector switch and tri-beam LED lights.",
            image: "https://media.bunnings.com.au/Product-800x800/9b98a3f9-ef42-4080-b465-b615c8416549.jpg",
            condition: true,
            user: user1,
            availability_status: true,
            price: 22,
            brand: "Ryobi",
            condition_detail: "As new",
            tech_specs: "Product Length (180mm)",
            parts_list: "some parts",
            category: "Mechanical & Metalwork")

Tool.create!(name: "QUICK ADJUSTING PIPE WRENCH",
            description: "The quick adjusting jaw offers one-handed operation, speed and convenience of use.",
            image: "https://media.bunnings.com.au/Product-800x800/6a82c2b2-9062-4159-9529-a6ca0b571d0b.jpg",
            condition: true,
            user: user2,
            availability_status: true,
            price: 12,
            brand: "Irwin",
            condition_detail: "As new",
            tech_specs: "Product Length (398mm)",
            parts_list: "some parts",
            category: "Plumbing")

Tool.create!(name: "TUBE CUTTER COMBO PACK",
            description: "The sharp blade cuts quickly through copper pipe.",
            image: "https://media.bunnings.com.au/Product-800x800/2b97d39b-9249-4709-8132-a47bbc628864.jpg",
            condition: true,
            user: user3,
            availability_status: true,
            price: 15,
            brand: "Haron",
            condition_detail: "As new",
            tech_specs: "Product Length (50mm)",
            parts_list: "some parts",
            category: "Plumbing")

Tool.create!(name: "MECHANICS VICE",
            description: "Mechanics Vice with replaceable hardened steel jaws. Cast from closed grained grey iron guaranteeing strength and long life.",
            image: "https://media.bunnings.com.au/Product-800x800/f33f24ad-c7dc-4df2-968d-eddc2fece752.jpg",
            condition: true,
            user: user2,
            availability_status: true,
            price: 20,
            brand: "Irwin",
            condition_detail: "As new",
            tech_specs: "Product Length (440mm)",
            parts_list: "some parts",
            category: "Mechanical & Metalwork")

Tool.create!(name: "WORKSHOP BLOWER",
            description: "Suitable for use in combined spaces, the compact design makes this workshop blower easy to store when not in use.",
            image: "https://media.bunnings.com.au/Product-800x800/e51e8f16-b197-4f4c-95e5-f9fa228646e3.jpg",
            condition: true,
            user: user,
            availability_status: true,
            price: 15,
            brand: "Ryobi",
            condition_detail: "As new",
            tech_specs: "Product Length (553mm)",
            parts_list: "some parts",
            category: "Garden & Outdoors")

Tool.create!(name: "IMPERIAL TAPE MEASURE",
            description: "The Stanley 8m Imperial Tape Measure is also equipped with Stanley Tru-Zero functionality and a three rivet end hook for inside or outside measurements.",
            image: "https://media.bunnings.com.au/Product-800x800/86eb79f9-c71a-4b4a-8a50-f031fc7ce4a3.jpg",
            condition: true,
            user: user2,
            availability_status: true,
            price: 8,
            brand: "Stanley",
            condition_detail: "As new",
            tech_specs: "Product Length (100mm)",
            parts_list: "some parts",
            category: "Measuring")

puts "Tools created!"
puts 'Seed complete.'
