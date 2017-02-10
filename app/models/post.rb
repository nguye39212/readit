class Post < ApplicationRecord
	belongs_to :user
	has_many :comments
	acts_as_voteable

	validates :title, presence: true
end
