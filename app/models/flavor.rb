class Flavor < ApplicationRecord
  belongs_to :shop
  has_many :flavor_reviews
  has_many :users, through: :flavor_reviews

  def average_rating
    return 0 unless flavor_reviews.count.positive?
    flavor_reviews.average(:rating).round(2).to_f
  end
end
