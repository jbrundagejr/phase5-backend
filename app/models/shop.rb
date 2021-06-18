class Shop < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews
  has_many :flavors, dependent: :delete_all

  def average_rating
    return 0 unless reviews.count.positive?
    reviews.average(:rating).round(2).to_f
  end
  
end
