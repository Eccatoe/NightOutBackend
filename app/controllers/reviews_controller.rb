class ReviewsController < ApplicationController

    post '/reviews' do
        review = Review.create(
            restaurant_id: params[:restaurant_id],
            user_id: params[:user_id],
            review: params[:review],
            stars: params[:stars]
        )

        review.to_json
    end

    patch '/reviews/:id' do
        review = Review.find(params[:id])
        
        attrs_to_update = params.select do |key, value|
            ["restaurant_id", "user_id", "review", "stars"].include?(key)
        end

        review.update(attrs_to_update)

        review.to_json
    end

    delete '/review/:id' do
        review = Review.find(params[:id])

        review.destroy

        review.to_json
    end
end