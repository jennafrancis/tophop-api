class Wishlist < ApplicationRecord
  belongs_to :user
  has_many :beers, through: :beer_wishlists
end
