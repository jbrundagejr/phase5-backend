class FlavorReviewSerializer < ActiveModel::Serializer
  attributes :id, :user, :content, :rating, :flavor
  belongs_to :user
  belongs_to :flavor
end
