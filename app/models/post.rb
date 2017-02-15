class Post < ApplicationRecord
	belongs_to :user
	has_many :comments
	acts_as_voteable

	validates :title, presence: true

	def has_link?
		true
	end

	def link
		"www.facebook.com"
	end
end



# create a field on the DB for Post called "link"

# link.present? --- Will indicate whether there is content in the link field.

# In order to link to an external site, you have to indicate the http protocol.