class Poi < ApplicationRecord
	mount_uploader :images, AvatarUploader
	belongs_to :destination
end
