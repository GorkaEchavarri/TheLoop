class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :friendships_as_asker, class_name: "Friendship", foreign_key: :asker_id
  has_many :friendships_as_receiver, class_name: "Friendship", foreign_key: :receiver_id

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, :bio, presence: true
  validates :username, uniqueness: true

  validates :bio, length: { minimum: 8 }
  validates :bio, length: { maximum: 2000 }

  validates :user_type, inclusion: %w[circle patient]
  # validates :status, inclusion: %w[in-treatment recovered]

end
