class Post < ApplicationRecord
	attr_accessor :image
	mount_uploader :image, ImageUploader

	uploader = ImageUploader.new

	# uploader.store!(:image)
end
