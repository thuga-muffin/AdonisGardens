class Post < ApplicationRecord
	
	has_many :post_images, :dependent => :destroy
	accepts_nested_attributes_for :post_images, :allow_destroy => true

	uploader = ImageUploader.new

	# uploader.store!(:image)
end
