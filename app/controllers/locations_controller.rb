class LocationsController < ApplicationController

	def show
		@location = Location.find(params[:id])
	end

	def details
		@location = Location.find(params[:id])
		render "details"
	end

	def pickup
		@location = Location.find(params[:id])
		render "pickup"
	end
end
