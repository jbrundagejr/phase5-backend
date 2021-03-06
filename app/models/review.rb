class Review < ApplicationRecord
  belongs_to :user
  belongs_to :shop
  validates_uniqueness_of :user, scope: :shop
end
