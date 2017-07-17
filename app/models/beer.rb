class Beer < ApplicationRecord
  belongs_to :brewery
  has_many :wishlist_beers
  has_many :wishlists, through: :wishlist_beers

  validates_presence_of :name, :brewery_id, :abv, :style
end
