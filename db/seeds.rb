puts "🌱 Seeding spices..."

#Restaurants
20.times do
    cuisine=["Indian", "French", "Hispanic", "Vegetarian/Vegan", "Italian", "American", "Winery"]
    Restaurant.create(
        restaurant_name: Faker::Restaurant.name, 
        cuisine: cuisine.sample, 
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
