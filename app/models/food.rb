class Food < ApplicationRecord
  mount_uploader :image, ImageUploader

  validates :name, presence: true
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user
end
