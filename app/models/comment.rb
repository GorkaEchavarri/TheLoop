class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  validates :content, presence: true
  validates :content, length: { maximum: 2000 }

  include PgSearch::Model

  multisearchable against: :content
end
