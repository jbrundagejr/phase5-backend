class ConversationSerializer < ActiveModel::Serializer
  attributes :id, :sender, :recipient, :messages
  has_many :messages
  
end
