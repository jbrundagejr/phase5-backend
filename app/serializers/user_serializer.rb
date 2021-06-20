class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :profile_img
  has_many :reviews
  has_many :flavor_reviews
  has_many :sent_conversations
  has_many :received_conversations
end
