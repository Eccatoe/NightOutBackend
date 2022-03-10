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

    get '/restaurant/:id/reviews' do
        restaurant = Restaurant.find(params[:id])

        reviews = restaurant.reviews.map do |r|
            r
        end

        reviews.to_json(include: :user)
    end

end