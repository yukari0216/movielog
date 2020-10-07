class Directer < ApplicationRecord
  mount_uploader :image, WorkImageUploader
  # has_one_attached :image

  has_many :works

  scope :by_new, ->{ order(updated_at: :desc) }
  
  validates :name, presence: true
  validates :country, presence: true
end

