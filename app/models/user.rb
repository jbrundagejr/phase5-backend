class User < ApplicationRecord
  has_secure_password
  has_many :reviews, dependent: :delete_all
  has_many :shops, through: :reviews
  has_many :messages, dependent: :delete_all
  has_many :sent_conversations, class_name: 'Conversation', foreign_key: :sender_id
  has_many :received_conversations, class_name: 'Conversation', foreign_key: :recipient_id
end
