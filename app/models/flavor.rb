class Flavor < ApplicationRecord
  belongs_to :shop
  has_many :flavor_reviews
  has_many :users, through: :flavor_reviews
end
