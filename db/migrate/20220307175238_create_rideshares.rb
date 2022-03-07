class CreateRideshares < ActiveRecord::Migration[6.1]
  def change
    create_table :rideshares do |t|
      t.string :company
    end
  end
end
