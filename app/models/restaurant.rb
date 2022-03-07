class Restaurant < ActiveRecord::Base
    has_many :reservations
    has_many :rideshares, through: :reservations
    has_many :users, through: :reservations
end