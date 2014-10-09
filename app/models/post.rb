class Post < ActiveRecord::Base
	has_many :rating_stars

	def average_rating
  		rating_stars.sum(:score) / rating_stars.size
	end
end


