class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  mount_uploader :image, ImageUploader
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
        # メール認証
        #  , :confirmable

  has_many :gummies
  has_many :comments
  has_many :favorites, dependent: :destroy
  validates :name, presence: true, uniqueness: true, length: { maximum: 8 }
  validates :introduction, length: { maximum: 200 } 

  def already_favorited?(gummy)
    self.favorites.exists?(gummy_id: gummy.id)
  end
end
