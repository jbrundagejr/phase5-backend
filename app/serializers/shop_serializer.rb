class ShopSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :lat, :lng, :website, :reviews, :average_rating
  has_many :flavors
  has_many :reviews
end
