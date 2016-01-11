class LocationsController < ApplicationController

	before_filter :authenticate

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

	def current_items
		@location = Location.find(params[:id])

		# again, refactor this later to find the correct character based on the user's selection
		# at the beginning of the game
		@character = Character.first
		render "current_items"
	end
end
