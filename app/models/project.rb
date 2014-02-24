class Project < ActiveRecord::Base
	belongs_to :professional
	has_many :photos
	has_many :comments 
end
