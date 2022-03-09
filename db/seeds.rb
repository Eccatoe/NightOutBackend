puts "🌱 Seeding spices..."
food_images=[
  "https://images.unsplash.com/photo-1549896443-e6d347606bf2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGFzdGF8ZW58MHwyfDB8YmxhY2t8&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1521305916504-4a1121188589?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8YnVyZ2VyfGVufDB8MnwwfGJsYWNrfA%3D%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1543826173-70651703c5a4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8YnVyZ2VyfGVufDB8MnwwfGJsYWNrfA%3D%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1610551949892-c9d17236a5f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8YnVyZ2VyfGVufDB8MnwwfGJsYWNrfA%3D%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1422748733255-ee572fddeab0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8ZGluaW5nfGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1625944527261-06c90f1901e3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGRpbmluZ3xlbnwwfDJ8MHx8&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1625943554499-342838b9c37f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGRpbmluZ3xlbnwwfDJ8MHx8&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1616524033290-42acf83299b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8bWVhbHxlbnwwfDJ8MHxibGFja3w%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1586032063807-8c6e8e5a466c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8bWVhbHxlbnwwfDJ8MHxibGFja3w%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1611506168454-656b2c960868?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8ZGlzaHxlbnwwfDJ8MHxibGFja3w%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1619892480884-ab1110af20d2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGRpc2h8ZW58MHwyfDB8YmxhY2t8&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1497415818126-3740914d3300?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGxhdGV8ZW58MHwyfDB8YmxhY2t8&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1606501129419-38058bd81ddc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHBsYXRlJTIwb2YlMjBmb29kfGVufDB8MnwwfGJsYWNrfA%3D%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1582170090097-b251ddbbf7f3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHBsYXRlJTIwb2YlMjBmb29kfGVufDB8MnwwfGJsYWNrfA%3D%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1466027575040-12134f1397fa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8a2l0Y2hlbnxlbnwwfDJ8MHxibGFja3w%3D&auto=format&fit=crop&w=500&q=60"

]

cuisine=["Indian", "French", "Latin", "Vegetarian/Vegan", "Italian", "American", "Winery"]
cuisine.each do |c|
    Cuisine.create(
        cuisine_name: c
    )
end

#Restaurants
20.times do
    Restaurant.create(
        restaurant_name: Faker::Restaurant.name, 
        restaurant_image: food_images.sample,
        description: Faker::Restaurant.description,
        address: Faker::Address.street_address,
        price: ["$", "$$", "$$$"].sample,
        avg_turn_time: rand(90...120)
    )
end

#Rideshares
Rideshare.create(company: "Lyft")
Rideshare.create(company: "Uber")
Rideshare.create(company: "Car Service")

#Users
20.times do
    User.create(
        name: Faker::Name.name,
        cc_info: Faker::Number.number(digits: 16),
        address: Faker::Address.street_address
    )
end

#Reservations
20.times do
    Reservation.create(   
    details: Faker::Date.between(from: Date.today, to: 1.year.from_now),
    restaurant_id: rand(1..Restaurant.all.length),
    rideshare_id: rand(1..Rideshare.all.length),
    user_id: rand(1..User.all.length),
    num_guests: rand(1..6))
 
end


puts "✅ Done seeding!"
