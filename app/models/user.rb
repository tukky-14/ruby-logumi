class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  mount_uploader :image, ImageUploader
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :gummies
  has_many :comments
  validates :name, presence: true, uniqueness: true
  validates :introduction, length: { maximum: 200 } 
end
