class FlavorReviewSerializer < ActiveModel::Serializer
  attributes :id, :content, :rating, :flavor
  belongs_to :user
  belongs_to :flavor
end
