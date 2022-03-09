class RestaurantsController < ApplicationController

    get '/restaurants' do

        Restaurant.all.to_json
        
    end


    get'/restaurants/:cuisine' do
        r=Restaurant.where(cuisine: params[:cuisine])
        r.to_json
    end

    get '/restaurant/:id' do
        restaurant = Restaurant.find(params[:id])
        restaurant.to_json
    end

    # get '/restaurants/:price' do
    #     r=Restaurant.all.select{|r| r.price=params[:price]}
    # end

end