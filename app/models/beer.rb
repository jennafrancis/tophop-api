class Beer < ApplicationRecord
  belongs_to :brewery
  has_many :wishlists, through: :wishlist_beers
end
