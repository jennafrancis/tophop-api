class Beer < ApplicationRecord
  has_many :wishlist_beers, dependent: :destroy
  has_many :wishlists, through: :wishlist_beers

  validates_presence_of :name, :brewery, :abv, :style
end
