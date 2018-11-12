class Message < ApplicationRecord
	mount_uploader :image, ImageUploader
	belongs_to :group
    belongs_to :user

  validates :user_id,
            :group_id,
            presence: true
end
