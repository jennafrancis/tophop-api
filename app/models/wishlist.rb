class Wishlist < ApplicationRecord
  belongs_to :user
  has_many :beers, through: :wishlist_beers
end
