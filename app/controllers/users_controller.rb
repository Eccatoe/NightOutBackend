class UsersController < ApplicationController

    get '/users' do
        User.all.to_json
    end

    get '/user/:id' do
        user = User.find(params[:id])

        vet.to_json
    end

    get '/user/:id/reservation/' do
        user = User.find(params[:id])
        reservations = user.reservations.map do |r|
            r
        end
        reservations.to_json(include: :restaurant)
    end

    post '/users/' do
        user = User.create(
            name: params[:name],
            cc_info: params[:cc_info],
            address: params[:address]
        )

        user.to_json
    end

    patch '/users/:id' do
        user = User.find(params[:id])

        attrs_to_update = params.select do |key, value|
            ["name", "cc_info", "address"].include?(key)
        end

        user.update(attrs_to_update)

        user.to_json
    end

    delete '/users' do
        user = User.find(params[:id])

        user.destroy

        user.to_json
    end
end