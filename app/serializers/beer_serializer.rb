class BeerSerializer < ActiveModel::Serializer
  attributes :id, :name, :abv, :ibu, :description, :style, :image_url
  belongs_to :brewery
end
