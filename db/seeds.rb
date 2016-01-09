# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Character.delete_all
Item.delete_all
Location.delete_all

characters_list = [
	{ 
		id: 1,
		rank: "Captain", 
		first_name: "Alina", 
		last_name: "Smirnova", 
		role: "Sniper", 
		birthplace: "Moscow", 
		bio: "TBD"
	},

	{ 
		id: 2,
		rank: "Lieutenant", 
		first_name: "Pavel", 
		last_name: "Barkov", 
		role: "Machine-gunner", 
		birthplace: "Leningrad", 
		bio: "TBD"
	},

	{ 
		id: 3,
		rank: "Major", 
		first_name: "Konstantin", 
		last_name: "Babaev", 
		role: "Commissar", 
		birthplace: "Magnitogorsk", 
		bio: "TBD"
	},

	{ 
		id: 4,
		rank: "Division Engineer", 
		first_name: "Anton", 
		last_name: "Bulgakov", 
		role: "Sapper", 
		birthplace: "Grozny", 
		bio: "TBD"
	}	
]


locations_list = [
	{
		id: 1, 
		name: "apartment",
		description: "It appears to be an old, abandoned apartment."
	}, 

	{
		id: 2,
		name: "street",
		description: "What may once have been a bustling thoroughfare is now pocked with craters and covered in rubble."
	},

	{
		id: 3,
		name: "the forest",
		description: "The moon casts eerie shadows throughout a sparse forest on the edge of town."
	},

	{
		id: 4,
		name: "the bunker",
		description: "a German pillbox. The corpse of a machine-gunner lies slumped over his weapon. Boxes of ammunition line the walls."
	}

]


items_list = [
	{
		id: 1,
		name: "vodka",
		description: "an ancient glass bottle with a shot or two left",
		location_id: 1,
		character_id: nil
	},

	key = {
		id: 2,
		name: "key",
		description: "an old brass key with a skull as the handle",
		location_id: 1,
		character_id: nil
	},

	{
		id: 3,
		name: "bandages",
		description: "a ragged handful of somewhat used first aid supplies. could come in handy.",
		location_id: 1, 
		character_id: nil
	},

	{
		id: 4,
		name: "rifle",
		description: "a battered hunting rifle that looks like it last saw action when Lenin was young.",
		location_id: 1,
		character_id: nil
	},

	{
		id: 5,
		name: "paper",
		description: "some scraps of paper from the fireplace. You might be able to piece them together later for valuable intelligence.",
		location_id: 1,
		character_id: nil
	},

	{
		id: 6,
		name: "trashcan lid",
		description: "An aluminum lid from a knocked over trashcan. Might stop a bullet. Might not.",
		location_id: 2,
		character_id: nil
	},

	{
		id: 7,
		name: "cobblestone",
		description: "a broken-off piece of paving stone that is just small enough to fit in your hand.",
		location_id: 2,
		character_id: nil
	},

	{
		id: 8,
		name: "ammo",
		description: "a box of shells that miraculously matches the hunting rifle",
		location_id: 2,
		character_id: nil
	},

	{
		id: 9,
		name: "peaches",
		description: "a can of peaches that is remarkably sealed and appears undamaged.",
		location_id: 2,
		character_id: nil
	}


]

items_list.each do |hash|
	p = Item.new
	hash.each do |attribute, value|
		p[attribute] = value
	end
	p.save
end

locations_list.each do |hash|
	p = Location.new
	hash.each do |attribute, value|
		p[attribute] = value
	end
	p.save
end

characters_list.each do |hash|
	p = Character.new 
	hash.each do |attribute, value|
		p[attribute] = value
	end
	p.save
end



