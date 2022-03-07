class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :restaurant_name
      t.string :address
      t.string :price
      t.integer :avg_turn_time
      t.string :cuisine
      t.string :description
  end
end
