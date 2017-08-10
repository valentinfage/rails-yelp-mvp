class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy #le delete sur le restaurant va provoquer le delete des reviews du resto.
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :phone_number, uniqueness: true, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], allow_nil: false }
end
