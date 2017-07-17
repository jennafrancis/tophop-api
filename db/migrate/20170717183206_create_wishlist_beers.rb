class CreateWishlistBeers < ActiveRecord::Migration[5.0]
  def change
    create_table :wishlist_beers do |t|
      t.integer :wishlist_id
      t.integer :beer_id
    end
  end
end
