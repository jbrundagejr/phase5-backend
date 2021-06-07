class Shop < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews
  has_many :flavors, dependent: :delete_all
end
