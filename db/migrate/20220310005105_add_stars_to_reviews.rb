class AddStarsToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :stars, :string
  end
end
