class RidesharesController < ApplicationController  
    get '/rideshares' do
    Rideshare.all.to_json
    end
end