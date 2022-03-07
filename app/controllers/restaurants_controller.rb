class RestaurantsController < ApplicationController

    get '/restaurants' do
        Restaurant.all.to_json
    end

end