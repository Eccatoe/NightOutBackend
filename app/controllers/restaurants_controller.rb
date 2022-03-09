class RestaurantsController < ApplicationController

    get '/restaurants' do
        Restaurant.all.to_json
    end

    get'/restaurants/:cuisine' do
        Restaurant.all.find_by(cuisine: params[:cuisine])
    end

end