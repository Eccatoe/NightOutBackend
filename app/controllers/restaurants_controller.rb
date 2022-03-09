class RestaurantsController < ApplicationController

    get '/restaurants' do
        Restaurant.all.to_json
    end

<<<<<<< HEAD
    get'/restaurants/:cuisine' do
        Restaurant.all.find_by(cuisine: params[:cuisine])
=======
    get '/restaurants' do
        restaurant = Restaurant.find(params[:id])

        restaurant.to_json
>>>>>>> user-updates
    end

end