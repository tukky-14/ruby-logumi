class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :gummy

  validates :text, presence: true
end
