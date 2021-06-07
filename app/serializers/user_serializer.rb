class UserSerializer < ActiveModel::Serializer
  attributes :username, :email, :profile_img
  has_many :reviews
end
