class Community < ApplicationRecord
  belongs_to :user

  validates :title, :description, presence: true
  validates :title, uniqueness: true

  validates :description, length: { minimum: 8 }
  validates :description, length: { maximum: 200 }

  has_many :posts, dependent: :destroy
  has_one_attached :photo
end
