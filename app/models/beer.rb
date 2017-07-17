class Beer < ApplicationRecord
  has_many :wishlists, through: :beer_wishlists
end
