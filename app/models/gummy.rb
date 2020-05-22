class Gummy < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
  belongs_to :maker
  has_many :comments

  validates :product, presence: true
end
