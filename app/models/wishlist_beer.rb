class WishlistBeer < ApplicationRecord
  belongs_to :beer
  belongs_to :wishlist
end
