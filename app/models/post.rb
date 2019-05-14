class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  validates :answer, :hint01, :hint02, :hint03, length: {in: 1..255}
  mount_uploader :image, ImageUploader
end
