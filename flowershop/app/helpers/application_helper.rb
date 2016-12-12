module ApplicationHelper

	# Default page title
	def full_title(page_title = '')
		site_title = "Adonis Gardens"
		if page_title.empty?
			site_title
		else
			page_title + " | " + site_title
		end
	end
end
