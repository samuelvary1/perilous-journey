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
		
		description: "It appears to be an old, abandoned apartment.",
		
		plot_text: 	"You open your eyes to find yourself in a strange apartment, having no idea how you'd gotten there. You gaze around in fear, but it quickly becomes apparent that you are alone here. You reach up and feel something wet and sticky behind your left ear, and your fingertips come away red in the hazy light of the room. It appears to be the middle of the night, but someone has lit a candle in the corner of the room, and there is evidence that someone has tended to you medically. You reach up again and sure enough find a rough row of stitches along what feels like a long gash towards the back of your head.'How on earth did I get here?' you whisper aloud. The last thing you remember was camping out in an old hospital building with Pavel, your spotter for the mission. A German patrol was supposed to come marching right down the streets of the newly conquered city, but they hadn't counted on a small band of resistance fighters staying behind to wage a hit-and-run campaign as long as they were still breathing. This city had been your home, after all, and with Pavel by your side, you felt confidence and adrenaline surge through your veins as you gripped the stock of your scoped rifle. Then the artillery had rained down on their heads. Apparently the Germans had known more about remaining pockets of resistance than anticipated. The mortars (and worse) came down from the sky with terrifying whistles and screeches across the previously tranquil autumn sky. The round that took out Pavel came barreling through the roof and crashing through the rotted floorboards behind you. You had just enough time to exchange a stupefied look of bewilderment with your comrade, before the round hit something solid and detonated upward through the building.",
		
		details: "You survey the room. You spot an old hunting rifle propped against the door. Beside it appears to be a glass bottle containing a shot or two of clear liquid. The windows are exceedingly filthy, but you can still make out the glow of a campfire in a bombed out department store building across the street. You stand up to take a better survey of the room. A family must have lived here, at least until recently. There's a hearth with a pile of ashes scattered over the brickwork. Among the ashes lie some curled fragments of yellow paper, as though the apartment's former occupants had burned a trove of documents prior to a hasty departure. You lean closer and can even make out a few words, just enough to see that it's in Russian, but nothing more. You sweep your hand across the mantle, sending up a cloud of dust. Suddenly, your hand stops. The mantle is high enough that it is just beyond your eye-level, but the metallic feel of a key is unmistakable. In your surprise, you knock it to the ground with a resounding clatter. Cursing your own clumsiness, you pray that no one heard." 		 
	}, 

	{
		id: 2,
		
		name: "street",
		
		description: "What may once have been a bustling thoroughfare is now pocked with craters and covered in rubble.",
		
		plot_text: "You slide the key into the door and turn it with a satisfying clatter. 'Why would someone lock me in here?' you wonder. No matter. You are free for the time being. Under the cover of darkness, you descend the rickety stairway and emerge onto the street. You move silently along the cobblestones, desperately hoping no erstwhile Germans should pop out and disturb your progress. You remember that Lt. Medvedev briefed you and Pavel regarding a fallback position in the forest, just beyond the outskirts of the town. Despite a wave of dizziness that creeps over you, you manage to get your bearings and continue north along the avenue. All is quiet.",

		details: "You look off to the side and see an alleyway with some trashed cans knocked over, the lids strewn about. A loosened chunk of paving stone lies at your feet. It looks just big enough to fit in your hand. You walk over to the alley and see a crate of ammunition stacked against one blast-scarred brick wall. You look inside. Strange, there appear to be a few boxes of rifle shells that happen to be the right caliber for the hunting rifle you picked up. Strange. You look down beside the crate of ammo and see a can of peaches, seemingly undamaged."
	},

	{
		id: 3,
		
		name: "edge of town",
		
		description: "You've reached the edge of the town. The terrifying forest looms beyond.",
		
		plot_text: "You can see the ghostly forest just up ahead. 'Lt. Medvedev will probably be cooking up a nice cauldron of soup at this point', you think. How good it will be to reunite with him. The news of Pavel's death will be painful to deliver, but in your heart you know he died an exceedingly noble death. Suddenly, a shot rings out from behind you and shatters a window not two inches from your face. Glass hits you in a blinding spray but you somehow manage to stumble away unscathed. You instinctively crouch low and whirl around to face your attacker. You spot another muzzle flash coming from a high church window. This time, the shot whizzes by your ear, splitting the air with a sound like a snapping rubber band. In one smooth motion, your instincts and training take over. You unsling the old hunting rifle from your shoulder and slide one cartridge into the breach. You just have time to raise the rifle and fire. A dark form crumples to the floor behind the window. Once again silence fills the air, and you appear to be safe. For now. You continue on to the edge of the forest, leaving the town behind. You glance back over your shoulder and wonder if you'll ever see this place again.",

		details: "You find yourself at the very end of the street. The forest looms eerily in the distance. Not much farther now, you think."
	},

	{
		id: 4,
		
		name: "the bunker in the woods",
		
		description: "a German pillbox. The corpse of a machine-gunner lies slumped over his weapon. Boxes of ammunition line the walls.",
		
		plot_text: "You make your way through the forest, stopping only once when a wolf's howl in the distance catches you off guard. Suddenly you spot a large, rectangular form in the distance. It looks like a bunker. You crouch low and make your way towards it. Upon entering the bunker, you immediately spot Lt. Medvedev. He looks terrible.",
		
		details: ""
	},

	{
		id: 5, 
		
		name: "victory screen",
		
		description: "this screen will either deliver a victory message or game over depending on if they save Medvedev",
		
		plot_text: "",

		details: ""
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
		description: "An old brass key with a skull as the handle",
		location_id: 1,
		character_id: nil
	},

	{
		id: 3,
		name: "bandages",
		description: "A ragged handful of somewhat-used first aid supplies. They could come in handy.",
		location_id: 1, 
		character_id: nil
	},

	{
		id: 4,
		name: "rifle",
		description: "A battered hunting rifle that looks like it last saw action when Lenin was young.",
		location_id: 1,
		character_id: nil
	},

	{
		id: 5,
		name: "paper",
		description: "Some scraps of paper from the fireplace. You might be able to piece them together later for valuable intelligence.",
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
		description: "A broken-off piece of paving stone that is just small enough to fit in your hand.",
		location_id: 2,
		character_id: nil
	},

	{
		id: 8,
		name: "ammo",
		description: "A box of shells that miraculously matches the hunting rifle",
		location_id: 2,
		character_id: nil
	},

	{
		id: 9,
		name: "peaches",
		description: "A can of peaches that is remarkably sealed and appears undamaged.",
		location_id: 2,
		character_id: nil
	}


]

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



items_list.each do |hash|
	p = Item.new
	hash.each do |attribute, value|
		p[attribute] = value
	end
	p.save
end

