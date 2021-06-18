class User < ApplicationRecord
  has_secure_password
  has_many :reviews, dependent: :delete_all
  has_many :flavor_reviews, dependent: :delete_all
  has_many :flavors, through: :flavor_reviews
  has_many :shops, through: :reviews
  has_many :messages, dependent: :delete_all
  has_many :sent_conversations, class_name: 'Conversation', foreign_key: :sender_id
  has_many :received_conversations, class_name: 'Conversation', foreign_key: :recipient_id
  validates_uniqueness_of :email

  def all_convos
    all_convos = []
    self.sent_conversations.each do |sent_convo|
      data = {
        sent_convo: sent_convo,
        sender_username: User.find(sent_convo.sender_id).username,
        sender_profile_img: User.find(sent_convo.sender_id).profile_img,
        recipient_username: User.find(sent_convo.recipient_id).username,
        recipient_profile_img: User.find(sent_convo.recipient_id).profile_img
      }
      all_convos << data
    end
    self.received_conversations.each do |received_convo|
      data = {
        received_convo: received_convo,
        sender_username: User.find(received_convo.sender_id).username,
        sender_profile_img: User.find(received_convo.sender_id).profile_img,
        recipient_username: User.find(received_convo.recipient_id).username,
        recipient_profile_img: User.find(received_convo.recipient_id).profile_img
      }
      all_convos << data
    end
    all_convos
  end

end
