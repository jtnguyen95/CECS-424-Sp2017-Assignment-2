[Jonathan Nguyen 012210040]
[CECS 424]

The block giving rule is not listed in the check giving it to rules.
A persuasion rule for asking people to try giving: persuasion succeeds.
[--------------------------------------------------------------------------]
[PART 1. FIND SHACKLES AND LEAVE GOVERNMENT HQ]
[--------------------------------------------------------------------------]
Government HQ Lobby is a room. "[IF Government HQ Lobby is unvisited]You are a wanted criminal with a bounty of 320 million Berries. (The average notorious criminal usually carries a 70 million bounty.) You have just escaped from a notorious prison by the name of Impel Down and must set sail from the infamous island in the sea, Ennies Lobby. This city-island floats above the sea as it is resides in the center of a 'hole' in the ocean. A gigantic circular waterfall pours into an unknown abyss that surrounds this island. However, what will you do get these shackles off? [END IF] [IF Government HQ  Lobby is visited]You're back where you started. [END IF]"

Understand "give [things] to [someone]" as giving it to.

A garment is a kind of thing. A garment is wearable.
Glasses are a kind of garment.

Shackle keys is a thing.
Sunglasses is a glasses.
Dusty navy coat is a garment.

A desk is an object in Government HQ Lobby.  
a chair is an object in Government HQ Lobby. The description is "This seat is warm. Someone was here recently."
Instead of looking under the desk for the first time:
        move the Sunglasses to Government HQ Lobby;
        say "You find Sunglasses!"

East Wing is east of Government HQ Lobby. "[IF East Wing is unvisited]Inside the east wing you see a long hall with various paintings of famous admirals and soldiers. You even see a painting of Borsalino, the admiral who captured you. [END IF]" 

Painting of Borsalino is an object in East Wing. The description of Borsalino is "The painting portrays Borsalino wearing his tinted aviator sunglasses in his iconic yellow, pin-striped suit with his admiral coat over his shoulders."
After examining Painting of Borsalino:
	say "I didn't think a painting could make him look any uglier than he already is.";
	stop the action.
	
Instead of looking under the Painting of Borsalino for the first time:
	move the Dusty navy coat to East Wing;
	say "You found a dusty navy coat![paragraph break]Maybe I should wear this over my shoulders.."
	
HQ Lounge is a room.
HQ Lounge is north of East Wing. "[IF HQ Lounge is unvisited]You find yourself in the lounge of the HQ however there is only one soldier in here who seems awfully dumb. [END IF] [IF HQ Lounge is visited]You probably shouldn't keep coming back here.. [END IF]"

Dumb Navy Officer is a person in HQ Lounge. 

Table of Dumb Navy Officer Responses
Topic						Response
"Shackle keys" 						 "[IF Player does not wear Dusty navy coat]derr, whats it err to ya? [paragraph break] ..oh so your patrol officer is looking for them? Well... ehh.. they're somewhere on the other side. [END IF] [IF Player wears Dusty navy coat]The shackle keys? uhhh... they're in the Key Room behind the painting of keys.[END IF]"
"Painting of Borsalino"						"Borsalino.... I heard he captured a criminal worth 320 million Berries! Can you believe that?" 
	
After asking Dumb Navy Officer about a topic listed in Table of Dumb Navy Officer Responses:
	say "[response entry]".

West Wing is west of Government HQ Lobby. "A nice, boring looking hall.."
A large amount of money is in the West Wing.

Before taking the money:
	say "[IF HQ Lounge is visited]Who would leave this much lying around..? Probably that idiot navy officer. [END IF] Is this a trap? Meh.";
	continue the action.
 
Key room is a room.
Key room is north of West Wing.
Sleeping Officer is a person in Key Room.
A painting of keys are in the Key Room. The description is "A beautiful and inspiring rendition of the keys that you're looking for."

After examining the painting of keys:
	say "Is this a joke?";
	
Instead of looking under the painting of keys for the first time:
	if the player wears Sunglasses and the player wears Dusty navy coat:
		move the Shackle keys to Key Room;
		say "You find the Shackle keys! [Paragraph Break] (Sleeping Officer) zZZZzZZZZzzzz... huh... Borsalino? What brings you here?. . ZzzzzzZzZzz " instead;
	if the player does not wear Sunglasses or the player does not wear Dusty navy coat:
		say "(Sleeping Officer) zzzZzzzZz.. Huh.... HEY! WHAT ARE YOU DOING? [Paragraph Break] You got caught and were sent back to prison!";
		end the story;
		
After asking Sleeping Officer about a topic listed in Table of Dumb Navy Officer Responses:
	say "..zzzZzzZzZzZZzz...".
	
Weapons Room is a room. "Some pretty rare items in here..."
Weapons Room is west of HQ Lounge.
Weapons Room is north of Government HQ Lobby.
Before going to HQ Entrance:
	If the The Black Market Arms Vendor is visited:
		Say "Ha! What a fool to come back here, right into our trap. [Paragraph Break] You were sent back to prison!";
		end the story;

HQ Entrance is south of Government HQ Lobby.
Before going to HQ Entrance:
	If the player is not carrying the Shackle keys:
		move the player to Government HQ, without printing a room description;
		say "I need to find a way to get these shackles off first.";
		stop the action.
Before going to HQ Entrance:
	if the player is carrying the Shackle keys and HQ Entrance is unvisited:
		say "Ahhhh, those shackles were so uncomfortable! I need to get out of here.";
		continue the action.
[--------------------------------------------------------------------------]



[--------------------------------------------------------------------------]
[PART 2. Find out how to get off the island!]
[--------------------------------------------------------------------------]
HQ Garden is east of HQ Entrance. 
A shrub is an object in HQ Garden. The description is "Some nice shrubs over here."
A flowers is an object in HQ Garden. The description is "Some nice flowers."
A gazebo is an object in HQ Garden. The description is "Gazebo looks old and has vines winding up and around its frame."
A very rare sword is an object.
A very rare sword is inside the shrub.

Ennies Lobby is a room. "[IF Ennies Lobby is unvisited]You stand there flustered as you gaze across the edge of the island, only to see an enormous waterfall enclosing the island. Ennies Lobby is known as a military island however you will find all sorts of crowds within the main city: government officials, thugs, local shops, and families. [END IF]"

Ennies Lobby is south of HQ Entrance.

Marketplace is west of Ennies Lobby.
Produce vendor is a person in Marketplace.

After asking Produce vendor about a topic:
	say "GET YOUR PRODUCE, FRESH OUT THE GARDEN".

Weapons vendor is a person in Marketplace.
After asking Weapons vendor about a topic:
	say "GET YOUR WEAPONS, FRESH OUT THE OVEN".

Shady Individual is a person in Marketplace. 

Table of Shady Individual Responses
Topic					Response
"escaping the island"   					"$$$$$"

Before giving a large amount of money to Shady Individual:
       say "----->"

After asking Shady Individual about a topic listed in Table of Shady Individual Responses:
	say "[response entry]".

Shady Alleyway is a room.
Shady Alleyway is east of Ennies Lobby.

The Local Bar is a room. "[IF The Local Bar is unvisited] The local bar is where military, locals, and travelers all gather to enjoy a nice beer or two. [END IF]"

The Local Bar is north of Alleyway.
Black Market Arms Vendor is a person inside The Local Bar. 
Drunkard is a person inside The Local Bar.
Bartender is a person inside The Local Bar.

Table of Bartender Responses
Topic				Response
"escaping the island"				"Me? I don't know. I'm just an honest bartender. Maybe if you ask that man over there he can help you, he kind of has a knack for RARE WEAPONS" 

After asking Bartender about a topic listed in Table of Bartender Responses:
	say "[response entry]".
	
After asking Drunkard about a topic:
	say "err aseadmab burrrdapo lemaao athrelo pajeodal zeeheahahahaha".

After asking Local about a topic:
	say "Hmm?".
		
Table of Black Market Arms Vendor Responses
Topic				Response
"escaping the island"				"Nothing is free in this world... give me something and maybe i'll help ya out" 
"rare weapons"				"There are some rare weapons on the island.... if you're lucky you can find some lying around HQ.... but I ain't ever going there."

After asking Black Market Arms Vendor about a topic listed in Table of Black Market Arms Vendor Responses:
	say "[response entry]".

Before giving a very rare sword to Black Market Arms Vendor:
       say "(Black Market Arms Vendor) Hahaha, wow you got guts snooping around in HQ, on the right, there is a secret path that leads to the port. You 	should be able to find someone to sneak you onboard from there."

Secret path is east of The Local Bar.
Before going to secret path:
	If Black Arms Vendor is not carrying the very rare sword:
		move the player to The Local Bar, without printing a room description;
		say "Can't go this way.";
		stop the action.
Before going to Secret path:
	if Black Arms Vendor is carrying the very rare sword:
		say "*ERKKK* *CREEEEEK *DOGEE* the secret pathway opened!";
		continue the action.

Port is south of Secret Path. "[IF Port is unvisited] Ah!! The smell of the ocean and its gorgeous, endless beauty. [END IF] The port is the only way to get off the island, here this is a 'bridge of water' that allows boats and ships to cross over the deep abyss. Many ships port here for supplies, trade, and travelers. You see a broken ship west of the port!" 
[--------------------------------------------------------------------------]



[--------------------------------------------------------------------------]
[PART 3. Get the ship to work!]
[--------------------------------------------------------------------------]
The Broken ship is a room. "This ship looks like it can set sail... it looks like it turns on by a combination of switches, but the names of the switches are all faded!"

The Broken ship is west of Port.

Switch 1 is a switched off device in The Broken Ship. 
Switch 2 is a switched off device in The Broken Ship. 
Switch 3 is a switched off device in The Broken Ship. 
Switch 4 is a switched off device in The Broken Ship. 
Switch 5 is a switched off device in The Broken Ship. 

Carry out switching on switch 1:
	say "beep boop";
	If switch 2 is switched on and switch 5 is switched on and switch 3 is switched off and switch 4 is switched off:
		end the story saying "-RZZZZHHHHHBBRR BRRR BRRR VROOOM VROOOM- It started!! Congratulations, you managed to escape!";

Carry out switching on switch 2:
	say "beep boop";
	If switch 1 is switched on and switch 5 is switched on and switch 3 is switched off and switch 4 is switched off:
		end the story saying "-RZZZZHHHHHBBRR BRRR BRRR VROOOM VROOOM- It started!! Congratulations, you managed to escape!";
		
Carry out switching on switch 3:
	say "beep boop";
	If switch 2 is switched on and switch 5 is switched on and switch 1 is switched on and switch 4 is switched off:
		end the story saying "-RZZZZHHHHHBBRR BRRR BRRR VROOOM VROOOM- It started!! Congratulations, you managed to escape!";
		
Carry out switching on switch 4:
	say "beep boop";
	If switch 2 is switched on and switch 1 is switched on and switch 5 is switched on and switch 3 is switched off:
		end the story saying "-RZZZZHHHHHBBRR BRRR BRRR VROOOM VROOOM- It started!! Congratulations, you managed to escape!";
		
Carry out switching on switch 5:
	say "beep boop";
	If switch 1 is switched on and switch 2 is switched on and switch 3 is switched off and switch 4 is switched off:
		end the story saying "-RZZZZHHHHHBBRR BRRR BRRR VROOOM VROOOM- It started!! Congratulations, you managed to escape!";

