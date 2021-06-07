class ShopSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :website, :plus_code
end
