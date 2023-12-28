global.topics = {};
//jock dialogue
global.topics[$ "Example"] = [
	SPEAKER("Jerk", spr_npc_idle, PORTRAIT_SIDE.LEFT),
		CHOICE("It's you again..", //start
			OPTION("What did I do?", "Chose What did I do?"), //wwjd
			OPTION("Sorry..?", "Chose Sorry..?"), //22
			OPTION("..again?", "Chose ..again?"))//FUCK ASS
];


//START OF WWJD BRANCH

	global.topics[$ "Chose What did I do?"] = [ //wwjd
		SPEAKER("Jerk", spr_npc_mad, PORTRAIT_SIDE.LEFT), //should be skeptical face here
			CHOICE("You don't remember? ",
				OPTION("No..?", "Chose No..?"), //did
				OPTION("..don't think I want to", "Chose ..don't think I want to")) // did
	
];

	global.topics[$ "Chose No..?"] = [ //wwjd
		SPEAKER("Jerk", spr_npc_mad, PORTRAIT_SIDE.LEFT),
			CHOICE("Because of you, my favorite trainers got all messed up",
				OPTION("What..?", "Chose What..?"),
				OPTION("..oh ", "Chose ..oh"), 
				OPTION("..because of me?", "Chose ..because of me?")) //end

];

	global.topics[$ "Chose ..because of me?"] = [//wwjd
		GOTO("Ending 5")
	
];

	global.topics[$ "Chose ..oh"] = [ //wwjd
		GOTO("Chose What..?")	
	
];

	global.topics[$ "Chose What..?"] = [ //wwjd
		SPEAKER("Jerk", spr_npc_mad, PORTRAIT_SIDE.LEFT), 
			CHOICE("Yes, you ran into my boyfriend and made him spill his ..drink all over my trainers ",
				OPTION("oh..", "Chose oh.."), // end
				OPTION("..dink?", "Chose ..drink?")) // end
	
];

	global.topics[$ "Chose oh.."] = [ //wwjd
		GOTO("Ending 1")
	
];		

	global.topics[$ "Chose ..drink?"] = [ //wwjd
		GOTO("Ending 2")
	
];

	global.topics[$ "Chose ..don't think I want to"] = [ //wwjd
		SPEAKER("Jerk", spr_npc_mad, PORTRAIT_SIDE.LEFT), 
			CHOICE("You don-.. jesus christ",
				OPTION("..sorry?", "Chose ..sorry?"), // end
				OPTION("swearing is bad","Chose swearing is bad")) // end
	
];

	global.topics[$ "Chose ..sorry?"] = [ //wwjd
		GOTO("Ending 3")
	
];

	global.topics[$ "Chose swearing is bad"] = [ //wwjd
		GOTO("Ending 5")
		
//END OF WWJD BRANCH
];

//START OF 22 RBANCH

	global.topics[$ "Chose Sorry..?"] = [ //22 end
		SPEAKER("Jerk", spr_npc_mad, PORTRAIT_SIDE.LEFT),
			CHOICE("Oh so now you can apologize?",
				OPTION("...no", "Chose ...no"), //end
				OPTION("... ", "Chose ..."), // end
				OPTION("Yes..?", "Chose Yes..?")) // end 22.2

];

	global.topics[$ "Chose ...no"] = [ //22 end
		GOTO("Chose ..don't think I want to") //end

];

	global.topics[$ "Chose ..."] = [ // 22 end
		SPEAKER("Jerk", spr_npc_mad, PORTRAIT_SIDE.LEFT),
			CHOICE("Cat suddenly caught your tongue again??",
				OPTION("Sorry?", "Chose Sorry?"), //end
				OPTION("I love cats", "Chose I love cats"), //end
				OPTION("..", "Chose ..")) // end

];

	global.topics[$ "Chose Sorry?"] = [ // 22 end
		GOTO("Ending 3") // end

];

	global.topics[$ "Chose I love cats"] = [ // 22 end
		GOTO("Ending 4")// end

];

	global.topics[$ "Chose .."] = [ // 22 end
		GOTO("Ending 5") // end

];

	global.topics[$ "Chose Yes..?"] = [ //22
		SPEAKER("Jerk", spr_npc_mad, PORTRAIT_SIDE.LEFT),
			CHOICE("You just didn't feel like saying sorry before then?", 
				OPTION("What do you mean?", "Chose What do you mean?"), // end 22.2
				OPTION("Before?", "Chose Before?"),// end22.3
				OPTION("huh", "Chose huh")) //end 22.4
				
];

	global.topics[$ "Chose What do you mean?"] = [ //22.2 end
	GOTO("Chose No..?") //end
				
];

	global.topics[$ "Chose Before?"] = [//22.3 end
		SPEAKER("Jerk", spr_npc_mad, PORTRAIT_SIDE.LEFT),
			CHOICE("Woww, you really are self centered aren't you",
				OPTION("If you say so", "Chose If you say so"), //end 
				OPTION("I'm not..?", "Chose I'm not..?")) //end
				
];

	global.topics[$ "Chose If you say so"] = [ //22.3 end
	GOTO("Ending 5")// end
				
];

	global.topics[$ "Chose I'm not..?"] = [ //end  22.3
	GOTO("Ending 6") // end
				
];

	global.topics[$ "Chose huh"] = [ //22.4 end
GOTO("Chose I think y-") //end
		
		
// END OF 22 BRANCH
];


//START OF FUCK ASS BRANCH


global.topics[$ "Chose ..again?"] = [ //fuck ass start
	SPEAKER("Jerk", spr_npc_idle, PORTRAIT_SIDE.LEFT),
		CHOICE("Yes again", 
			OPTION("....", "Chose ...."), //end
			OPTION("I think y-", "Chose I think y-"), // end
			OPTION("..not following", "Chose ..not following")) // end
];

global.topics[$ "Chose ...."] = [ // end
GOTO("Chose ...") //end
		
];

global.topics[$ "Chose I think y-"] = [ //fuck ass end
	SPEAKER("Jerk", spr_npc_idle, PORTRAIT_SIDE.LEFT),
		CHOICE("Cut the crap, you can't forget the person you've run into",
			OPTION("I can..", "Chose I can.."), //end
			OPTION("I really don't remember", "Chose I really don't remember"))//end
];

global.topics[$ "Chose I can.."] = [ //fuckass end
GOTO("Ending 7")// end
		
];

global.topics[$ "Chose I really don't remember"] = [// fuckass end
GOTO("Ending 8")// end
		
];

global.topics[$ "Chose ..not following"] = [ //fuckasss 3
	SPEAKER("Jerk", spr_npc_idle, PORTRAIT_SIDE.LEFT),
		CHOICE("Want to know why you got me agitated then?",
			OPTION("..no", "Chose ..no"), //end
			OPTION("..yes", "Chose ..yes"), //end
			OPTION("I guess..", "Chose I guess..")) //end
];

global.topics[$ "Chose ..no"] = [ //fuckass3 end
GOTO("Chose Before?") //end
		
];

global.topics[$ "Chose ..yes"] = [ //fuckass 3 end
	SPEAKER("Jerk", spr_npc_idle, PORTRAIT_SIDE.LEFT),
		CHOICE("YOU rand into my boyfriend, which made him SPILL his drink all over my FAVORITE trainers",
			OPTION(".....", "Chose ....."), //end
			OPTION("Still clueless..", "Chose Still clueless"), //end
			OPTION("..oh.", "Chose ..oh."),// end
			OPTION("I see", "Chose I see"))// end
];

global.topics[$ "Chose ....."] = [ //fuckss3 end
GOTO("Ending 7") //end
		
];

global.topics[$ "Chose Still clueless.."] = [ //fuckass 3 end
GOTO("Ending 7") //end
		
];

global.topics[$ "Chose ..oh."] = [ //fuckasss end 3 
GOTO("Ending 9")//end
		
];

global.topics[$ "Chose I see"] = [ //fuckasss end 3 
GOTO("Ending 9")//end
		
];

global.topics[$ "Chose I guess.."] = [//fuckass 3 end
GOTO("Chose ..yes") // end
		
];





//ENDINGS JOCK

global.topics[$ "Ending 1"] = [
	TEXT("Since they're drying in the art room, I had to walk around on socks all day."),
	TEXT("That was cold as shit and you haven't even said sorry yet."),
	SPEAKER("Jerk", spr_npc_mad, PORTRAIT_SIDE.LEFT)
	
];

global.topics[$ "Ending 2"] = [
	TEXT("That.. doesn't matter... Just get my trainers from the art room, you owe me that."),
	SPEAKER("Jerk", spr_npc_mad, PORTRAIT_SIDE.LEFT)
	
];

global.topics[$ "Ending 3"] = [
	TEXT("You probably don't even remember what you should be apoligizing for"),
	TEXT("Get my trainers from the art room, that should help jog your memory"),
	SPEAKER("jerk", spr_npc_mad, PORTRAIT_SIDE.LEFT)

];

global.topics[$ "Ending 4"] = [
	TEXT("Then I have a propesition for you. Get me my trainers or I kill your cat"),
	SPEAKER("jerk", spr_npc_mad, PORTRAIT_SIDE.LEFT)

];

global.topics[$ "Ending 5"] = [
	TEXT("Jesus, okay just get me my trainers from the art room. You owe that at least."),
	SPEAKER("jerk", spr_npc_mad, PORTRAIT_SIDE.LEFT)

];

global.topics[$ "Ending 6"] = [
	TEXT("I don't believe a single hair on your body. Get my trainers from the art room and prove it then"),
	SPEAKER("jerk", spr_npc_mad, PORTRAIT_SIDE.LEFT)
	
];

global.topics[$ "Ending 7"] = [
	TEXT("Unbelievable. Maybe you remember my shoes then, they're in the art room"),
	SPEAKER("jerk", spr_npc_mad, PORTRAIT_SIDE.LEFT)
	
];

global.topics[$ "Ending 8"] = [
	TEXT("Get my trainers from the art room, maybe that'll jog your memory"),
	SPEAKER("jerk", spr_npc_mad, PORTRAIT_SIDE.LEFT)
	
];
global.topics[$ "Ending 9"] = [
	TEXT("Yes. I had to walk around on socks all day because my trainers had to dry in the art room"),
	TEXT("Fucking cold that was"),
	SPEAKER("jerk", spr_npc_mad, PORTRAIT_SIDE.LEFT)
	
];








//old man dialogue
global.topics[$ "npc old man"] = [
	SPEAKER("OLD MAN", spr_npc_mad, PORTRAIT_SIDE.LEFT),
	TEXT("Crying noises"),
	TEXT("My precious family heirloom. Someone tripped over it and now it's broken."),
	TEXT("Some nails might fix it, but I don't want to leave her here alone to go to the art room.."),
	SPEAKER("OLD MAN", spr_npc_mad, PORTRAIT_SIDE.LEFT)
];