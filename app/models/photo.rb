class Photo < ActiveRecord::Base
	belongs_to :professional
	belongs_to :tag
	belongs_to :project
	has_many :comments
end
