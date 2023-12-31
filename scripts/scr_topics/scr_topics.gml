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





//ENDINGS JOCK beginning

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

//ENDING ENDINGS JOCK








//janitor dialogeyy
global.topics[$ "npc old man"] = [ //working on it
	SPEAKER("OLD MAN", spr_npc_mad, PORTRAIT_SIDE.LEFT),
		CHOICE("My poor mop", //he cries
			OPTION("Are you okay?", "Chose Are you okay?"), //old man boyy wokring on
			OPTION("Can I help you?", "Chose Can I help you?")) //unbranched

];

global.topics[$ "Chose Are you okay?"] = [ //old man nboyy end
	SPEAKER("Jerk", spr_npc_idle, PORTRAIT_SIDE.LEFT),
		CHOICE("No",
			OPTION("What happened", "Chose What happened"))//end
	
];

global.topics[$ "Chose What happened?"] = [ //old man nboyy working
	SPEAKER("Jerk", spr_npc_idle, PORTRAIT_SIDE.LEFT),
		CHOICE("My family heirloom got broken",
			OPTION("That's crazy", "Chose That's crazy"),// oldyy end
			OPTION("Can I help", "Chose Can I help"),// working sodomy goto end
			OPTION("Family heirloom?", "Chose Family heirloom?"))//unbranhced workingnggn goto kjek
	
];

global.topics[$ "Chose That's crazy"] = [ //oldyy end
	SPEAKER("Jerk", spr_npc_idle, PORTRAIT_SIDE.LEFT),
		CHOICE("Even crazier is the person who broke it. They ran off without saying a word",
			OPTION("How rude of them", "Chose How rude of them"),// oldy 2 end
			OPTION("......", "Chose ......"),//six dots0ldy 3 end
			OPTION("Maybe they were in an hurry", "Chose Maybe they were in a hurry"))// oldy4 end
	
];

global.topics[$ "Chose How rude of them"] = [ //oldy 2 end
	SPEAKER("Jerk", spr_npc_idle, PORTRAIT_SIDE.LEFT),
GOTO("Ending janitor 1") //end
	
];

global.topics[$ "Chose ......"] = [ //oldy 3 end
	SPEAKER("Jerk", spr_npc_idle, PORTRAIT_SIDE.LEFT),
GOTO("Ending janitor 2") //end
	
];

global.topics[$ "Chose Maybe they were in a hurry?"] = [ //oldy 4 end
	SPEAKER("Jerk", spr_npc_idle, PORTRAIT_SIDE.LEFT),
GOTO("Ending janitor 3") //end
	
];

global.topics[$ "Chose Can I help?"] = [ //sodomy //end
	SPEAKER("Jerk", spr_npc_idle, PORTRAIT_SIDE.LEFT),
GOTO("Ending janitor 4") //end
	
];

global.topipx[$ "Chose Family heirloom?"] = [ //kjek
	SPEAKER("Jerk", spr_npc_idle, PORTRAIT_SIDE.LEFT),
		CHOICE("Yes, my mop. I treassured it a lot",
			CHOICE("Can I help?", "Chose Can I help?"), //end kjek11
			CHOICE("A mop?", "Chose A mop?"), //unbranched kjek22 goto !!!!!!!!!!!!HEREEE
			CHOICE("Stop crying", "Chose stop crying")) //unbranched
			
];

global.topipx[$ "Chose Can I help?"] = [ //kjek11 end
	SPEAKER("Jerk", spr_npc_idle, PORTRAIT_SIDE.LEFT),
GOTO("Ending janitor 4")//end
];
	
global.topipx[$ "Chose A mop?"] = [ //kjek22 working unbranched
	SPEAKER("Jerk", spr_npc_idle, PORTRAIT_SIDE.LEFT),
		CHOICE("Making mops was our family business 3000 years ago. This is the last one left",
			CHOICE("A mop family business?", "Chose a mop family business?"),//unbranched
			CHOICE("3000 years ago?", "Chose 3000 years ago?"), //ubranched
			CHOICE("I can try to help you fix it?", "Chose I can try to help you fix it?")) //unbranched
			
];
	






//janitor endings

global.topics[$ "Ending janitor 1"] = [
	TEXT("They didn't even offer to help me find nails in the art room to fix my mop again"),
	SPEAKER("jerk", spr_npc_mad, PORTRAIT_SIDE.LEFT) //he cries agian
	
];


global.topics[$ "Ending janitor 2"] = [
	TEXT("If only someone could get some nails from the art room for me to fix my mop"),
	SPEAKER("jerk", spr_npc_mad, PORTRAIT_SIDE.LEFT) //he cries agian
	
];

global.topics[$ "Ending janitor 3"] = [
	TEXT("In a hurry to break my heart?"),
	SPEAKER("jerk", spr_npc_mad, PORTRAIT_SIDE.LEFT)

];

global.topics[$ "Ending janitor 4"] = [
	TEXT("Maybe some nails from the art room could fix my precious family heirloom"),
	TEXT("but not my heart"),
	SPEAKER("jerk", spr_npc_mad, PORTRAIT_SIDE.LEFT)

];