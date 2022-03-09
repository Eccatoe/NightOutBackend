class RestaurantsController < ApplicationController

    get '/restaurants' do
        Restaurant.all.to_json
    end


    get'/restaurants/:cuisine' do
        Restaurant.all.find_by(cuisine: params[:cuisine])
    end

    get '/restaurants' do
        restaurant = Restaurant.find(params[:id])
        restaurant.to_json
    end

end