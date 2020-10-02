class Directer < ApplicationRecord
  has_many :works
  has_one_attached :image
  scope :by_new, ->{ order(updated_at: :desc) }
  validates :name, presence: true
  validates :country, presence: true
end

