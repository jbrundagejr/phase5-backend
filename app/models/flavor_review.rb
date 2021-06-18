class FlavorReview < ApplicationRecord
  belongs_to :user
  belongs_to :flavor
  validates_uniqueness_of :user, scope: :flavor
end
