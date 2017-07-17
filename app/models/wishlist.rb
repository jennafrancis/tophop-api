class Wishlist < ApplicationRecord
  belongs_to :user
  has_many :wishlist_beers, dependent: :destroy
  has_many :beers, through: :wishlist_beers

  validates_presence_of :user_id
end
