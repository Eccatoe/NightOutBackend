class ReservationsController< ApplicationController
    belongs_to :user
    belongs_to :restaurant
    belongs_to :reservation
end