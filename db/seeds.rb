puts "Deleting seeds..."
Reservation.destroy_all
Review.destroy_all
Restaurant.destroy_all
User.destroy_all
Rideshare.destroy_all

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
  "https://images.unsplash.com/photo-1466027575040-12134f1397fa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8a2l0Y2hlbnxlbnwwfDJ8MHxibGFja3w%3D&auto=format&fit=crop&w=500&q=60"

]


#Restaurants
50.times do
    cuisine=["indian", "latin", "vegan", "communal", "wineries", "breweries", "comfort", "italian", "french"]
    Restaurant.create(
        restaurant_name: Faker::Restaurant.name, 
        restaurant_image: food_images.sample,
        description: Faker::Restaurant.description,
        cuisine: cuisine.sample,
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
100.times do
    Reservation.create(   
    details: Faker::Time.between(from: DateTime.now - 365, to: DateTime.now+365),
    restaurant_id: Restaurant.ids.sample,
    rideshare_id: Rideshare.ids.sample,
    user_id: User.ids.sample,
    num_guests: rand(1..6))
 
end

#Reviews
100.times do
    Review.create(
        restaurant_id: Restaurant.ids.sample,
        user_id: User.ids.sample,
        review: Faker::Restaurant.review,
        stars: ['⭐️', '⭐️⭐️', '⭐️⭐️⭐️'].sample
    )
end


puts "✅ Done seeding!"
