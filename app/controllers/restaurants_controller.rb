class RestaurantsController < ApplicationController

    get '/restaurants' do
        Restaurant.all.to_json
    end

    get '/restaurants' do
        restaurant = Restaurant.find(params[:id])

        restaurant.to_json
    end

end