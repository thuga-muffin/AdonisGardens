class PostImage < ApplicationRecord
	attr_accessor :images
	mount_uploader :images, ImageUploader

	belongs_to :post
end
