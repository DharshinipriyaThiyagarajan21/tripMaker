class Destination < ApplicationRecord
	mount_uploader :images, AvatarUploader
	has_many :pois
end
