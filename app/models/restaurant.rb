class Restaurant < ApplicationRecord
  validates :address, :name, :category, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
  has_many :reviews
end
