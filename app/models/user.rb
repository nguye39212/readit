class User < ApplicationRecord
	has_secure_password
	has_many :posts
	has_many :comments
	validates :username, uniqueness: true
end
