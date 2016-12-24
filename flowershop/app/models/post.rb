class Post < ApplicationRecord
	
	# has_many :post_images, :dependent => :destroy
	# accepts_nested_attributes_for :post_images, :allow_destroy => true

	has_many :post_attachments
	accepts_nested_attributes_for :post_attachments

	uploader = ImageUploader.new

	# uploader.store!(:image)
end
