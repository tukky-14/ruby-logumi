class Gummy < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user

  validates :product, presence: true
end
