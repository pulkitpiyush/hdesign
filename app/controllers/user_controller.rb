class UserController < ApplicationController
	before_filter :authenticate_user!, :only => "hidden"

	def index
	end

	def hidden
	end
	
end
