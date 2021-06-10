class FlavorReviewSerializer < ActiveModel::Serializer
  attributes :id, :user, :content, :rating
  belongs_to :user
  belongs_to :flavor
end
