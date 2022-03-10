class User < ActiveRecord::Base
    has_many :reservations
    has_many :reviews
    has_many :rideshares, through: :reservations
    has_many :restaurants, through: :reservation
end