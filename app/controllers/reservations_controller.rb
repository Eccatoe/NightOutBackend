class ReservationsController< ApplicationController
  get 'reservations' do
        Reservation.all.to_json
    end    
end