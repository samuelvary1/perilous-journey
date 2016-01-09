class Item < ActiveRecord::Base
  belongs_to :location
  belongs_to :character
end
