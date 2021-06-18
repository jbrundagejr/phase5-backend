class MessageSerializer < ActiveModel::Serializer
  attributes :id, :content, :user, :conversation
  belongs_to :user
  belongs_to :conversation
end
