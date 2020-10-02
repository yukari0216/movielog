class Work < ApplicationRecord
  has_one_attached :image
  
  belongs_to :directer
  scope :by_new, ->{ order(updated_at: :desc) }
  validates :title, presence: true
  validates :title, uniqueness: true
  validates :year, presence: true
  validates :acter, presence: true
  validates :about, presence: true
end
