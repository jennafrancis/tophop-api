class Beer < ApplicationRecord
  has_many :wishlists, through: :wishlist_beers
end
