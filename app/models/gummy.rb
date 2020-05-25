class Gummy < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :product, presence: true

  belongs_to :user
  belongs_to :maker
  has_many :comments, dependent: :destroy

  def self.search(search)
    return Gummy.all unless search
    Gummy.where('product LIKE(?)', "%#{search}%")
  end

end
