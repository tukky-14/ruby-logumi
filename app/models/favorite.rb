class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :gummy

  # 1つのグミに対して一人一回のいいねのvalidate
  validates_uniqueness_of :gummy_id, scope: :user_id
end
