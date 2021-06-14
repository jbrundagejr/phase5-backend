class FlavorSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image_url, :average_rating, :flavor_reviews
  belongs_to :shop
  has_many :flavor_reviews
end
