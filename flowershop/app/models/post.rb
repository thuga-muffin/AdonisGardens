class Post < ApplicationRecord
	attr_accessor :images
	mount_uploader :images, ImageUploader

	uploader = ImageUploader.new

	# uploader.store!(:image)
end
