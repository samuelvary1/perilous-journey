class CharactersController < ApplicationController
	
	def pickup_item
		# refactor this later with sessions to be able to use all characters, and set the character here based on the session user_id 
		@character = Character.first
		
		@location = Location.find(params[:id])

		pickup = @location.items.find do |item|
			item.name = params[:item]
		end

		respond_to do |format|

			if @location.items.include?(pickup)
				@character.items << pickup
				@location.items.delete(pickup)
				pickup.location_id = nil

				format.html { redirect_to "/locations/#{@location.id}/pickup", notice: "You've picked up the #{pickup.name}!"}
			else

				format.html { redirect_to "/locations/#{@location.id}/pickup", notice: "Sorry, that item either isn't here, you've already grabbed it, or you've typed the wrong name. Try again!"}
			end
		end
	end
end
