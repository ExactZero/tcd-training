class VisitorsController < ApplicationController
	def new
		@owner = Owner.new
		flash.now[:notice] = "Welcome!"
		flash.now[:alert] = "We regret to inform you!"
	end
end