class Post < ApplicationRecord
  belongs_to :community
  belongs_to :user
  validates :title, :content, presence: true
  validates :content, length: { maximum: 2000 }
end
