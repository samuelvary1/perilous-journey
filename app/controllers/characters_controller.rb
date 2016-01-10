class CharactersController < ApplicationController


	def pickup_item(item, location)
		self.items << item
		location.items.delete(item)
		item.location_id = nil
	end

end
