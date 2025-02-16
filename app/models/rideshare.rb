class Rideshare < ActiveRecord::Base
    has_many :reservations
    has_many :restaurants, through: :reservations
    has_many :users, through: :reservations
end