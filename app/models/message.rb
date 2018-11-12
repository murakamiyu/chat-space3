class Message < ApplicationRecord
	mount_uploader :image, ImageUploader
	belongs_to :group
    belongs_to :user

  validates :user_id,
            :group_id,
            :content_or_image,
            presence: true   

  private
    def content_or_image
      content.presence or image.presence
    end
end
