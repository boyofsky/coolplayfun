class UsersController < ApplicationController
	def index
		@allusers = User.all
	end
end
