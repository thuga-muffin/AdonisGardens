class PostImage < ApplicationRecord
	attr_accessor :image
	mount_uploader :image, ImageUploader

	belongs_to :post
end

