class Comment < ActiveRecord::Base
	belongs_to :professional 
	belongs_to :project
	belongs_to :photo
end
