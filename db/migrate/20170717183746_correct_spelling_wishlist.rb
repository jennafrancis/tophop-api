class CorrectSpellingWishlist < ActiveRecord::Migration[5.0]
  def change
    rename_column :wishlist_beers, :wislist_id, :wishlist_id
  end
end
