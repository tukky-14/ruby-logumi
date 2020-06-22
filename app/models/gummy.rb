class Gummy < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :product, presence: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :maker
  
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  def self.search(search)
    return Gummy.all unless search
    Gummy.where('product LIKE(?)', "%#{search}%")
  end

end
