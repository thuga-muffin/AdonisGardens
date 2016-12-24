class PostAttachment < ApplicationRecord
	mount_uploader :mult_image, MultImageUploader
	belongs_to :post
end
