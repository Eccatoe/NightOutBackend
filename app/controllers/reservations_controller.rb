class ReservationsController < ApplicationController

  get '/reservations' do
    Reservation.all.to_json

  end 
  
  post '/reservations' do
    reservation = Reservation.create(
      details: params[:details],
      restaurant_id: params[:restaurant_id],
      user_id: params[:user_id],
      rideshare_id: params[:rideshare_id],
      num_guests: params[:num_guests]
    )

    reservation.to_json
  end

  patch '/reservations/:id' do
    reservation = Reservation.find(params[:id])

    attrs_to_update = params.select do |key, value|
      ["num_guests", "details"].include?(key)
    end

    reservation.update(attrs_to_update)
    
    reservation.to_json

  end

  delete '/reservations/:id' do
    reservation = Reservation.find(params[:id])

    reservation.destroy

    reservation.to_json
  end
    
end