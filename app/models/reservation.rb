class Reservation<ActiveRecord::Base
    belongs_to :user
    belongs_to :restaurant
    belongs_to :reservation
end