class UsersController< ApplicationController
    has_many :reservations
    has_many :rideshares, through: :reservations
    has_many :restaurants, through: :reservations
end