class User < ApplicationRecord
	has_secure_password
	has_many :posts
	has_many :comments
	validates :username, uniqueness: true
	acts_as_voter     # relationship :votes will be obscured by the same named relationship from acts_as_voteable :(
  # has_karma :questions, :as => :submitter, :weight => 0.5
  # Karma by default is only calculated from upvotes. If you pass an array to the weight option, you can count downvotes as well (below, downvotes count for half as much karma against you):
  # has_karma :questions, :as => :submitter, :weight => [ 1, 0.5 ]
end
