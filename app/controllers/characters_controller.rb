class CharactersController < ApplicationController


	def pickup_item
		self.items << item
		location.items.delete(item)
		item.location_id = nil
		
	end

end
