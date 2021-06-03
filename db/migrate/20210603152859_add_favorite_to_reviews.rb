class AddFavoriteToReviews < ActiveRecord::Migration[5.2]
  def change
  	 add_column :reviews, :favorite, :boolean, default: false
  end
end
