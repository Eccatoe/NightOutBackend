class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.datetime :details
      t.references :restaurant
      t.references :user
      t.references :rideshare 
      t.integer :num_guests
    end
  end
end
