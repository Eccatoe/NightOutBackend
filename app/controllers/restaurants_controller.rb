class RestaurantsController < ApplicationController

    get '/restaurants' do

        Restaurant.all.to_json
        
    end


    get'/restaurants/:cuisine' do
        r=Restaurant.all.collect{|r| r.cuisine.cuisine_name }
        r.to_json
    end

    get '/restaurants/:id' do
        restaurant = Restaurant.find(params[:id])
        restaurant.to_json
    end

    # get '/restaurants/:price' do
    #     r=Restaurant.all.select{|r| r.price=params[:price]}
    # end

end