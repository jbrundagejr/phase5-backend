class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :shop_id, :content, :rating 
end
