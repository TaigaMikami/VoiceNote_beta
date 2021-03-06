class Note < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc)}
  mount_uploader :image, ImageUploader
  validates :user_id, presence: true
  validates :content, presence: true
end
