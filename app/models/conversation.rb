class Conversation < ApplicationRecord
  belongs_to :sender, class_name: 'User', foreign_key: :sender_id
  belongs_to :recipient, class_name: 'User', foreign_key: :recipient_id
  has_many :messages, dependent: :delete_all
  validates_uniqueness_of :sender_id, scope: :recipient_id

  scope :between, -> (sender_id, recipient_id) do
    where( " (conversations.sender_id = ? AND conversations.recipient_id =?) OR 
      (conversations.sender_id = ? AND conversations.recipient_id =?) ", 
      sender_id, recipient_id, recipient_id, sender_id)
  end

  def self.sender_ids
    self.all.map {|conversation_instance| conversation_instance.sender_id }
  end

  def self.recipient_ids
    self.all.map {|conversation_instance| conversation_instance.recipient_id }
  end

end