class FlavorSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image_url
  belongs_to :shop
  has_many :flavor_reviews
end
