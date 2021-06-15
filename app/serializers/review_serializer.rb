class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :user, :shop, :content, :rating 
end
