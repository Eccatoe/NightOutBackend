class RestaurantsController < ApplicationController

    get '/restaurants' do
        Restaurant.all.to_json
    end


    get'/restaurants/:cuisine' do
        r=Restaurant.all.find_by(cuisine: params[:cuisine])
        r.to_json
    end

    get '/restaurants/:id' do
        restaurant = Restaurant.find(params[:id])
        restaurant.to_json
    end

end