class AddCuisines < ActiveRecord::Migration[6.1]
  def change
    create_table :cuisines do |t|
      t.string :cuisine_name
    end
  end
end
