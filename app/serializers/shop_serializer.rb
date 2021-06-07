class ShopSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :website, :plus_code
  has_many :flavors
  has_many :reviews
end
