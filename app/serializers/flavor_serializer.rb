class FlavorSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image_url, :average_rating
  belongs_to :shop
  has_many :flavor_reviews
end
