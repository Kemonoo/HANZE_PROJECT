

global.topics = {};
//jock dialogue
global.topics[$ "Example"] = [
	SPEAKER("Miron", jock_neutral, PORTRAIT_SIDE.LEFT),
		CHOICE("It's you again..", //start
			OPTION("What did I do?", "Chose What did I do?"), //wwjd
			OPTION("Sorry..?", "Chose Sorry..?"), //22
			OPTION("..again?", "Chose ..again?"),//FUCK ASS
			OPTION("Item options", "Chose iteam option69"))
			
];


//START OF WWJD BRANCH

	global.topics[$ "Chose What did I do?"] = [ //wwjd
		SPEAKER("Miron", jock_neutral, PORTRAIT_SIDE.LEFT), //should be skeptical face here
			CHOICE("You don't remember? ",
				OPTION("No..?", "Chose No..?"), //did
				OPTION("..don't think I want to", "Chose ..don't think I want to")) // did
	
];

	global.topics[$ "Chose No..?"] = [ //wwjd
		SPEAKER("Miron", jock_mad, PORTRAIT_SIDE.LEFT),
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
		SPEAKER("Miron", jock_mad, PORTRAIT_SIDE.LEFT), 
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
		SPEAKER("Miron", jock_mad, PORTRAIT_SIDE.LEFT), 
			CHOICE("You don-.. fucking dicks",
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
		SPEAKER("Miron", jock_suprised, PORTRAIT_SIDE.LEFT),
			CHOICE("Oh so now you can apologize?",
				OPTION("...no", "Chose ...no"), //end
				OPTION("... ", "Chose ..."), // end
				OPTION("Yes..?", "Chose Yes..?")) // end 22.2

];

	global.topics[$ "Chose ...no"] = [ //22 end
		GOTO("Chose ..don't think I want to") //end

];

	global.topics[$ "Chose ..."] = [ // 22 end
		SPEAKER("Miron", jock_brow_neutral, PORTRAIT_SIDE.LEFT),
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
		SPEAKER("Miron", jock_suprised, PORTRAIT_SIDE.LEFT),
			CHOICE("You just didn't feel like saying sorry before then?", 
				OPTION("What do you mean?", "Chose What do you mean?"), // end 22.2
				OPTION("Before?", "Chose Before?"),// end22.3
				OPTION("huh", "Chose huh")) //end 22.4
				
];

	global.topics[$ "Chose What do you mean?"] = [ //22.2 end
	GOTO("Chose No..?") //end
				
];

	global.topics[$ "Chose Before?"] = [//22.3 end
		SPEAKER("Miron", jock_suprised, PORTRAIT_SIDE.LEFT),
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
	SPEAKER("Miron", jock_brow_neutral, PORTRAIT_SIDE.LEFT),
		CHOICE("Yes again", 
			OPTION("....", "Chose ...."), //end
			OPTION("I think y-", "Chose I think y-"), // end
			OPTION("..not following", "Chose ..not following")) // end
];

global.topics[$ "Chose ...."] = [ // end
GOTO("Chose ...") //end
		
];

global.topics[$ "Chose I think y-"] = [ //fuck ass end
	SPEAKER("Miron", jock_mad, PORTRAIT_SIDE.LEFT),
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
	SPEAKER("Miron", jock_brow_neutral, PORTRAIT_SIDE.LEFT),
		CHOICE("Want to know why you got me agitated then?",
			OPTION("..no", "Chose ..no"), //end
			OPTION("..yes", "Chose ..yes"), //end
			OPTION("I guess..", "Chose I guess..")) //end
];

global.topics[$ "Chose ..no"] = [ //fuckass3 end
GOTO("Chose Before?") //end
		
];

global.topics[$ "Chose ..yes"] = [ //fuckass 3 end
	SPEAKER("Miron", jock_mad, PORTRAIT_SIDE.LEFT),
		CHOICE("YOU ran into my boyfriend, which made him SPILL his drink all over my FAVORITE trainers",
			OPTION(".....", "Chose ....."), //end
			OPTION("Still clueless..", "Chose Still clueless.."), //end
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
	TEXT("Since they're drying in the attic, I had to walk around on socks all day."),
	TEXT("That was cold as shit and you haven't even said sorry yet."),
	SPEAKER("Miron", jock_mad, PORTRAIT_SIDE.LEFT)
	
];

global.topics[$ "Ending 2"] = [
	TEXT("That.. doesn't matter... Just get my trainers from the attic, you owe me that."),
	TALK_JERK(),
	SPEAKER("Miron", jock_mad, PORTRAIT_SIDE.LEFT)
	
	
];

global.topics[$ "Ending 3"] = [
	TEXT("You probably don't even remember what you should be apoligizing for"),
	TEXT("Get my trainers from the attic, that should help jog your memory"),
	TALK_JERK(),
	SPEAKER("Miron", jock_mad, PORTRAIT_SIDE.LEFT)

];

global.topics[$ "Ending 4"] = [
	TEXT("Then I have a propesition for you. Get me my trainers from the attic, or I kill your cat"),
	TALK_JERK(),
	SPEAKER("Miron", jock_mad, PORTRAIT_SIDE.LEFT)

];

global.topics[$ "Ending 5"] = [
	TEXT("Fucking hell, okay just get me my trainers from the attic. You owe that at least."),
	TALK_JERK(),
	SPEAKER("Miron", jock_mad, PORTRAIT_SIDE.LEFT)

];

global.topics[$ "Ending 6"] = [
	TEXT("I don't believe a single hair on your body. Get my trainers from the attic and prove it then"),
	TALK_JERK(),
	SPEAKER("Miron", jock_mad, PORTRAIT_SIDE.LEFT)
	
];

global.topics[$ "Ending 7"] = [
	TEXT("Unbelievable. Maybe you remember my shoes then, they're in the attic"),
	TALK_JERK(),
	SPEAKER("Miron", jock_mad, PORTRAIT_SIDE.LEFT)
	
];

global.topics[$ "Ending 8"] = [
	TEXT("Get my trainers from the attic, maybe that'll jog your memory"),
	TALK_JERK(),
	SPEAKER("Miron", jock_mad, PORTRAIT_SIDE.LEFT)
	
];
global.topics[$ "Ending 9"] = [
	TEXT("Yes. I had to walk around on socks all day because my trainers had to dry in the attic"),
	TEXT("Fucking cold that was"),
	TALK_JERK(),
	SPEAKER("Miron", jock_mad, PORTRAIT_SIDE.LEFT)
	
];

//ENDING ENDINGS JOCK



//ITEM GIVE BACK OPTIONS DIALOGYE JOCK

global.topics[$ "Chose iteam option69"] = [
SPEAKER("Miron", jock_suprised, PORTRAIT_SIDE.LEFT),	
	CHOICE("And? Found my trainers yet?",
			OPTION("Give the shoes back" ,"Chose give shoes"), //end
			OPTION("Keep the shoes","Chose lie shoes"),//END
			OPTION("Not yet", "Chose Not yet"))
		
];

global.topics[$ "Chose Not yet"] = [//END
SPEAKER("Miron", jock_mad, PORTRAIT_SIDE.LEFT),
	 TEXT("Well, go find them"),
];

global.topics[$ "Chose lie shoes"] = [//END
	 KEEP_SHOES(),
SPEAKER("Noah", noah_less_wide, PORTRAIT_SIDE.LEFT),
	 TEXT("I think someone stole them"),
	GOTO("End shoes 1"),
];

global.topics[$ "Chose give shoes"] = [
	GIVE_SHOES_BACK(),
SPEAKER("Noah", noah_less_wide, PORTRAIT_SIDE.LEFT),
	TEXT("They were there"),//noah
   GOTO("jock excited")
];

global.topics[$ "jock excited"] = [
SPEAKER("Miron", jock_neutral, PORTRAIT_SIDE.LEFT),
	TEXT("GREAT!"),
	TEXT("I can finally walk on them again"),
	CHOICE("Wait why do they feel warm",
		OPTION("Small apology", "Chose small jock"),//END
		OPTION("Mediocre apology", "Chose Mediocre jock"),//END
		OPTION("Big apology", "Chose Big jock"))//end
];

global.topics[$ "Chose small jock"] = [//END
 SPEAKER("Noah", noah_less_wide, PORTRAIT_SIDE.LEFT),
	TEXT("Sorry I used them"),
	TEXT("And sorry for the spilling"),
GOTO("End shoes 2")
];

global.topics[$ "Chose Mediocre jock"] = [//end
 SPEAKER("Noah", noah_less_wide, PORTRAIT_SIDE.LEFT),
	TEXT("I used your shoes for a bit sorry"),
	TEXT("I'm also sorry for walking into your boyfriend and ruining your shoes"),
	TEXT("I was lost in my thoughts"),
GOTO("End shoes 3")
];

global.topics[$ "Chose Big jock"] = [//end
 SPEAKER("Noah", noah_less_wide, PORTRAIT_SIDE.LEFT),
	TEXT("Sorry for walking into your boyfriend and running away after instead of apologizing"),
	TEXT("I just don't feel like myself these last weeks"),
	TEXT("My mind is going bad places that my body wants to follow"),
GOTO("no cry")
];

global.topics[$ "no cry"] = [//end
 SPEAKER("Miron", jock_suprised, PORTRAIT_SIDE.LEFT),
	TEXT("okay don't start crying on me now, I don't know how to deal with that."),
	TEXT("You know, my boyfriend had the same problems"),
		CHOICE("You could talk to him about it? It might help you",
			OPTION("It's okay", "Chose It's okay"), //end
			OPTION("You wouldn't mind?", "Chose You wouldn't mind?"),//end
			OPTION("Oh", "Chose Oh jock"))//end

];

global.topics[$ "Chose It's okay"] = [//end
GOTO("End shoes 4")
];

global.topics[$ "Chose You wouldn't mind?"] = [//end
GOTO("End shoes 5")
];

global.topics[$ "Chose Oh jock"] = [//end
GOTO("End shoes 6")
];




//ENDOINGS SHOES


global.topics[$ "End shoes 1"] = [
 SPEAKER("Miron", jock_mad, PORTRAIT_SIDE.LEFT),
	TEXT("SOMEONE STOLE THEM?!"),
	TEXT("THEY'RE DEAD"),
	SPEAKER("Jerk", spr_npc_happy, PORTRAIT_SIDE.LEFT)
	
];


global.topics[$ "End shoes 2"] = [
 SPEAKER("Miron", jock_neutral, PORTRAIT_SIDE.LEFT),
	TEXT("Nah it's alright, I mean i got them again and they're warm!"),
	TEXT("Perfect for my cold feet."), 
	TEXT("You're good don't worry"),
	SPEAKER("Jerk", spr_npc_happy, PORTRAIT_SIDE.LEFT)
	
];

global.topics[$ "End shoes 3"] = [
SPEAKER("Miron", jock_neutral, PORTRAIT_SIDE.LEFT),
	TEXT("Ah, I know the feeling. My boyfriend has that sometimes as well"),
	TEXT("It helped when he talked to some people about it"),
	TEXT("Might help for you as well"), 
	TEXT("And my shoes do look very comfortable so I don't blame you for wearing them"),
	SPEAKER("Jerk", spr_npc_happy, PORTRAIT_SIDE.LEFT)
	
];


global.topics[$ "End shoes 4"] = [
SPEAKER("Miron", jock_neutral, PORTRAIT_SIDE.LEFT),
	TEXT("For what it's worth, I forgive you"),
	TEXT("Seems like you're dealing with enough already"),
	TEXT("You should check out the office,"),
	TEXT("my boyfriend went there a lot as well. He always felt better afterwards"),
	SPEAKER("Jerk", spr_npc_happy, PORTRAIT_SIDE.LEFT)
	
];

global.topics[$ "End shoes 5"] = [
SPEAKER("Miron", jock_neutral, PORTRAIT_SIDE.LEFT),
	TEXT("Oh I do,"),
	TEXT("but I'm sure he'd want me to help out as much people that are going through the same thing as he has"),
	TEXT("Besides, I don't really mind"),
	TEXT(" You did apologize and even got my trainers, so you're alright"),
	SPEAKER("Jerk", spr_npc_happy, PORTRAIT_SIDE.LEFT)
	
];

global.topics[$ "End shoes 6"] = [
SPEAKER("Miron", jock_neutral, PORTRAIT_SIDE.LEFT),
	TEXT("This is me forgiving you, accept the offer"),
	TEXT("I feel bad for being rude to you when it wasn't really your fault"),
	SPEAKER("Jerk", spr_npc_happy, PORTRAIT_SIDE.LEFT)
	
];




//end of shoe give back keep




selectedDialogOption = "";
giveNailsBackOptionChosen = false;

////////////////////////////////////////////////////////////////////////////////////////////////////



//START OF THE JANITOR DIALOGUE
//janitor dialogeyy
global.topics[$ "npc janitor"] = [ //end
	SPEAKER("Greg", janitor_sad_tears, PORTRAIT_SIDE.LEFT),
		CHOICE("My poor mop", //he cries
			OPTION("Are you okay?", "Chose Are you okay?"), //end
			OPTION("Can I help you?", "Chose Can I help you?"), //end
			OPTION("Item options", "Chose Item options janitor"))//working

];

global.topics[$ "Chose Are you okay?"] = [ //old man nboyy end
	SPEAKER("Greg", janitor_sad_tears, PORTRAIT_SIDE.LEFT),
		CHOICE("No",
			OPTION("What happened", "Chose What happened"),//YEEHAW BRANCH END
			OPTION("Ohh no", "Chose Ohh no"),// BILLIBOEM END
			OPTION("Nevermind", "Chose Nevermind"))// BANANANANAN END
	
];

//START OF YEEHAW BRANCH

global.topics[$ "Chose What happened"] = [ //YEEHAW BRANCH END
	SPEAKER("Greg", confused_mad_tears_janitor, PORTRAIT_SIDE.LEFT),
		CHOICE("Someone broke my family heirloom",
			OPTION("That's crazy", "Chose That's crazy"),// oldyy end
			OPTION("Can I help?", "Chose Can I help?"),// end
			OPTION("Family heirloom?", "Chose Family heirloom?"))//end
	
];

global.topics[$ "Chose That's crazy"] = [ //oldyy end
	SPEAKER("Greg", confused_mad_tears_janitor, PORTRAIT_SIDE.LEFT),
		CHOICE("Even crazier is the person who broke it. They ran off without saying a word",
			OPTION("How rude of them", "Chose How rude of them"),// oldy 2 end
			OPTION("......", "Chose ......"),//six dots0ldy 3 end
			OPTION("Maybe they were in a hurry?", "Chose Maybe they were in a hurry?"))// oldy4 end
	
];

global.topics[$ "Chose How rude of them"] = [ //oldy 2 end
GOTO("Ending janitor 1") //end
	
];

global.topics[$ "Chose ......"] = [ //oldy 3 end
GOTO("Ending janitor 2") //end
	
];

global.topics[$ "Chose Maybe they were in a hurry?"] = [ //oldy 4 end
GOTO("Ending janitor 3") //end
	
];

global.topics[$ "Chose Can I help?"] = [ //sodomy //end
GOTO("Ending janitor 4") //end
	
];

global.topics[$ "Chose Family heirloom?"] = [ //end
	SPEAKER("Greg", janitor_sad_tears, PORTRAIT_SIDE.LEFT),
		CHOICE("Yes, my mop. I treassured it a lot",
			OPTION("Can I help?", "Chose Can I help?"), //end kjek11
			OPTION("A mop?", "Chose A mop?"), //end
			OPTION("Stop crying", "Chose Stop crying")) //end
			
];

global.topics[$ "Chose Can I help?"] = [ //kjek11 end
GOTO("Ending janitor 4")//end
];
	
global.topics[$ "Chose A mop?"] = [ //end
	SPEAKER("Greg", janitor_sad_tears, PORTRAIT_SIDE.LEFT),
		CHOICE("Making mops was our family business 3000 years ago. This is the last one left",
			OPTION("A mop family business?", "Chose a mop family business?"),//end
			OPTION("3000 years ago?", "Chose 3000 years ago?"), //end
			OPTION("I can try to help you fix it?", "Chose I can try to help you fix it?")) //end
			
];
	
global.topics[$ "Chose a mop family business?"] = [ // end
	SPEAKER("Greg", janitor_sad_tears, PORTRAIT_SIDE.LEFT),
		CHOICE("Yes, we were the best in the business",
			OPTION("What happened?", "Chose What happened?"),//end
			OPTION("Not anymore?", "Chose Not anymore?"), //end
			OPTION("Can I help bring back the mops glory?", "Chose Can I help bring back the mops glory?")) //end
			
];

global.topics[$ "Chose What happened?"] = [ //e d
	SPEAKER("Greg", janitor_sad_tears, PORTRAIT_SIDE.LEFT),
		CHOICE("Our rivals.. murdered all of my family, leaving me with this single mop as a reminder of them",
			OPTION("You didn't take any revenge?", "Chose You didn't take any revenge?"),//end
			OPTION("omg", "Chose omg"), //end 
			OPTION("That sounds terrible", "Chose That sounds terrible")) //end
			
];

global.topics[$ "Chose You didn't take any revenge?"] = [ //end
	SPEAKER("Greg", janitor_sad_tears, PORTRAIT_SIDE.LEFT),
		CHOICE("There were too many of them and only one of me in the end",
			OPTION("You should have done something", "Chose You should have done something"),//end							
			OPTION("How horrific", "Chose How horrific"), //end
			OPTION("What a pity", "Chose What a pity")) //end
			
];

global.topics[$ "Chose You should have done something"] = [ //end
GOTO("Ending janitor defenitive")//end
			
];

global.topics[$ "Chose How horrific"] = [ //end
GOTO("Ending janitor defenitive")//end
			
];

global.topics[$ "Chose What a pity"] = [ //end
GOTO("Ending janitor defenitive")//end
			
];

global.topics[$ "Chose omg"] = [ //end
GOTO("Ending janitor defenitive")//end
			
];

global.topics[$ "Chose That sounds terrible"] = [ //end
GOTO("Ending janitor defenitive")//end
			
];

global.topics[$ "Chose Not anymore?"] = [ // end
	SPEAKER("Greg", confused_mad_tears_janitor, PORTRAIT_SIDE.LEFT),
		TEXT("No"),
		CHOICE("Our rivals made sure of that",
			OPTION("How so?", "Chose How so?"),//end
			OPTION("What a shame", "Chose What a shame"), //nd 
			OPTION("Oh no", "Chose Oh no")) //end
			
];

global.topics[$ "Chose How so?"] = [ // nd
GOTO("Chose What happened?")//end

];

global.topics[$ "Chose What a shame"] = [ // end
GOTO("Ending janitor defenitive")//end

];

global.topics[$ "Chose Oh no"] = [ // end
GOTO("Ending janitor defenitive") //end

];

global.topics[$ "Chose Can I help bring back the mops glory?"] = [ // end
GOTO("Ending janitor 6")//end

];
	
global.topics[$ "Chose 3000 years ago?"] = [ //end
GOTO("Ending janitor 5") //end

];

global.topics[$ "Chose I can try to help you fix it?"] = [ //end
	SPEAKER("Greg", janitor_sad_tears, PORTRAIT_SIDE.LEFT), //crying
		CHOICE("My heart or my mop?",
			OPTION("Your heart", "Chose Your heart"),//end
			OPTION("Your mop", "Chose Your mop"), //end
			OPTION("Both", "Chose Both"), //end
			OPTION("Neither", "Chose Neither"))//emd
			
];

global.topics[$ "Chose Both"] = [ //end
GOTO("Ending janitor 7") //end

];

global.topics[$ "Chose Your heart"] = [ //end
GOTO("Ending janitor 8") //end

];

global.topics[$ "Chose Your mop"] = [ //end
GOTO("Ending janitor 9") //end

];

global.topics[$ "Chose Neither"] = [ //end
GOTO("Ending janitor 10") //end

];

global.topics[$ "Chose Stop crying"] = [ //end
GOTO("Ending janitor 11")//end
			
];

global.topics[$ "Chose Can I help you?"] = [ //end
	SPEAKER("Greg", janitor_sad_tears, PORTRAIT_SIDE.LEFT),
		CHOICE("Help my broken heart or my mop?", //he cries
			OPTION("What happened to your mop?", "Chose What happened to your mop?"), //end
			OPTION("Did someone break your heart?", "Chose Did someone break your heart?"), //end
			OPTION("Both?", "Chose Both?"),//end
			OPTION("Nevermind", "Chose Nevermind")) //end
];

global.topics[$ "Chose What happened to your mop?"] = [ //end
GOTO("Chose What happened")//end
			
];

global.topics[$ "Chose Did someone break your heart?"] = [ //end
SPEAKER("Greg", janitor_sad_tears, PORTRAIT_SIDE.LEFT),
	TEXT("Yes"),	
GOTO("Chose What happened")//end
			
];

global.topics[$ "Chose Both?"] = [ //end
GOTO("Ending janitor 7")//end
			
];

global.topics[$ "Chose Nevermind"] = [ //end
GOTO("Ending janitor 10")//end
			
];

//END OF YEEHAW BRANCH




//START OF BILLIBOEM BRANCH


global.topics[$ "Chose Ohh no"] = [ //BILLIEBOEM BRANCH
	SPEAKER("Greg", janitor_sad_tears, PORTRAIT_SIDE.LEFT),
		CHOICE("She's dying", //insert crying
			OPTION("Who's dying?", "Chose Who's dying?"),// 441 end
			OPTION("What ails her", "Chose What ails her"),//working 777 
			OPTION("Dying?!", "Chose Dying?!"))////unbranched 
	
];

global.topics[$ "Chose Who's dying?"] = [ //441 end
	SPEAKER("Greg", janitor_sad_tears, PORTRAIT_SIDE.LEFT),
		CHOICE("My one and only member left of the family", //insert crying
			OPTION("Sorry for your loss", "Chose Sorry for your loss"),//442 end
			OPTION("What happened to her?", "Chose What happened to her?"),//443 end
			OPTION("Where is she now?", "Chose Where is she now?"))//444 end
	
];

global.topics[$ "Chose Sorry for your loss"] = [ //442 end
GOTO("Ending janitor 12")//end

];

global.topics[$ "Chose What happened to her?"] = [ //443 end
	SPEAKER("Greg", janitor_sad_tears, PORTRAIT_SIDE.LEFT),
		TEXT("Someone tripped over her"), 
		CHOICE("My poor, poor mop",
			OPTION("Can I help?", "Chose Can I help?"),//4431 >> this prompt should take you to line 446 (end)
			OPTION("Can we save her?", "Chose Can we save her?"),//4432 end
			OPTION("Your mop?", "Chose Your mop?"))//4433 end
	
];

global.topics[$ "Chose Can we save her?"] = [ //4432 end
GOTO("Ending janitor 13")//end

];

global.topics[$ "Chose Your mop?"] = [ //4433 end
GOTO("Chose Family heirloom?")//end

];

global.topics[$ "Chose Where is she now?"] = [ //444 end
	SPEAKER("Greg", janitor_sad_tears, PORTRAIT_SIDE.LEFT),
		CHOICE("She's lying in my hands right here", //insert crying
			OPTION("Will she make it?", "Chose Will she make it?"),//44441 end
			OPTION("A mop?", "Chose A mop?"),//(end) >> Should go to line 466
			OPTION("What happened to her?", "Chose What happened to her?"))// (end) >> shoud go to line 657
	
];

global.topics[$ "Chose Will she make it?"] = [ //44441 end
GOTO("Ending janitor 14")//end

];

global.topics[$ "Chose What ails her"] = [ //777
	SPEAKER("Greg", janitor_sad_tears, PORTRAIT_SIDE.LEFT),
		CHOICE("A broken neck", //insert crying
			OPTION("Uh?", "Chose Uh?"),// 7771 end
			OPTION("How?", "Chose How?"),// 7772 end
			OPTION("Will she get better?", "Chose Will she get better?"))// 7773 work 
			
];

global.topics[$ "Chose Uh?"] = [ //7771 end
GOTO("Chose What happened to her?")//end

];

global.topics[$ "Chose How?"] = [ //7772 end
GOTO("Chose What happened to her?")//end

];

global.topics[$ "Chose Will she get better?"] = [ //7773 end
GOTO("Ending janitor 14")//end

];

//END OF BILLIBOEM BRANCH


//START OF BANANANNAA BRANCH


global.topics[$ "Chose Nevermind"] = [ //BAAANANNANNA end
GOTO("Ending janitor 10") //end
];


//END OF BANANNANA BRANCH






//janitor endings

global.topics[$ "Ending janitor 1"] = [
	TEXT("They didn't even offer to help me find nails in the art room to fix my mop again"),
	TALK_OLDMAN(),
	SPEAKER("Greg", confused_mad_tears_janitor, PORTRAIT_SIDE.LEFT) //he cries agian
	
];


global.topics[$ "Ending janitor 2"] = [
	TEXT("If only someone could get some nails from the art room for me to fix my mop"),
	TALK_OLDMAN(),
	SPEAKER("Greg", janitor_sad_tears, PORTRAIT_SIDE.LEFT) //he cries agian
	
];

global.topics[$ "Ending janitor 3"] = [
	TEXT("In a hurry to break my heart and not offer to help get nails from the art room to fix her?"),
	TALK_OLDMAN(),
	SPEAKER("Greg", janitor_sad_tears, PORTRAIT_SIDE.LEFT)

];

global.topics[$ "Ending janitor 4"] = [
	TEXT("Maybe some nails from the art room could fix my precious family heirloom"),
	TALK_OLDMAN(),
	TEXT("but not my heart"),
	SPEAKER("Greg", janitor_sad_tears, PORTRAIT_SIDE.LEFT)

];

global.topics[$ "Ending janitor 5"] = [
	TEXT("..yes."),
	TEXT("I could really use some nails. There might be some in the art room."),
	TALK_OLDMAN(),
	SPEAKER("Greg", janitor_sad_tears, PORTRAIT_SIDE.LEFT)

];

global.topics[$ "Ending janitor 6"] = [
	TEXT("Our glory is forever lost, but maybe I can fix this mop with some nails."),
	TEXT("There should be some in the art room"),
	TALK_OLDMAN(),
	SPEAKER("Greg", janitor_sad_tears, PORTRAIT_SIDE.LEFT)

];

global.topics[$ "Ending janitor 7"] = [
	TEXT("If you can find me some nails from the art room, my mop can be fixed"),
	TEXT("Find whoever broke my mop and it might fix my heart"),
	TALK_OLDMAN(),
	SPEAKER("Greg", janitor_sad_tears, PORTRAIT_SIDE.LEFT)

];

global.topics[$ "Ending janitor 8"] = [
	TEXT("There might be a cure for my heart in the art room"),
	TALK_OLDMAN(),
	SPEAKER("Greg", janitor_sad_tears, PORTRAIT_SIDE.LEFT)

];

global.topics[$ "Ending janitor 9"] = [
	TEXT("Only nails could fix her now"),
	TALK_OLDMAN(),
	SPEAKER("Greg", janitor_sad_tears, PORTRAIT_SIDE.LEFT)

];

global.topics[$ "Ending janitor 10"] = [
	TEXT("I just need nails from the art room please"),
	TALK_OLDMAN(),//crying
	SPEAKER("Greg", janitor_sad_tears, PORTRAIT_SIDE.LEFT)

];

global.topics[$ "Ending janitor 11"] = [
	TEXT("How can I when the only memory of my familiy is broken"), //crying
	TEXT("When I can no longer connect with them like before"),
	TEXT("When I don't even have nails to fix her"),
	TALK_OLDMAN(),
	SPEAKER("Greg", janitor_sad_tears, PORTRAIT_SIDE.LEFT)

];

global.topics[$ "Ending janitor 12"] = [
	TEXT("She is not fully gone yet!"), //crying
	TEXT("If i find some nails i might be able to bring her back to life"),
	TEXT("I'm just too scared to leave her alone"),
	TALK_OLDMAN(),
	SPEAKER("Greg", janitor_sad_tears, PORTRAIT_SIDE.LEFT)
 
];

global.topics[$ "Ending janitor 13"] = [
	TEXT("I'm praying for nails from the art room, but my answers have not yet been heard"), //crying
	TALK_OLDMAN(),
	SPEAKER("Greg", janitor_sad_tears, PORTRAIT_SIDE.LEFT)
 
];

global.topics[$ "Ending janitor 14"] = [
	TEXT("We might be able to help her with some nails from the art room"), //crying
	TALK_OLDMAN(),
	SPEAKER("Greg", janitor_sad_tears, PORTRAIT_SIDE.LEFT)
 
];
global.topics[$ "Ending janitor defenitive"] = [
	TEXT("Well it is all in the past now"),
	TEXT("Just like my mop"), //crying
	TEXT("Nails would maybe fix my mop, could you help me find some. I'm too scared to leave her here all alone."),
	TALK_OLDMAN(),
	SPEAKER("Greg", janitor_sad_tears, PORTRAIT_SIDE.LEFT)

];
//END OF THE JANITOR DIALOGUEE



//ITEM RETURN OPTIONS JANITOR

global.topics[$ "Chose Item options janitor"] = [
SPEAKER("Greg", janitor_sad_tears, PORTRAIT_SIDE.LEFT),
	TEXT(".. and that she will be able to mop again"),
	CHOICE("Please Gods I know you can hear me",
			OPTION("Save her" ,"Chose Save her"), //END
			OPTION("Keep nails","Chose Keep nails"), //done
			OPTION("Haven't found the item yet", "Chose not yet"))
	 
];

global.topics[$ "Chose not yet"] = [
TEXT("..."),
SPEAKER("Noah", noah_less_wide, PORTRAIT_SIDE.LEFT),

];

global.topics[$ "Chose Keep nails"] = [
	 KEEP_NAILS(),
GOTO("selfish Noah")//end

];

global.topics[$ "selfish Noah"] = [//end
SPEAKER("Noah", noah_less_wide, PORTRAIT_SIDE.LEFT),
	TEXT("I think her time has come"),
GOTO("IT give 8"),
	
];

global.topics[$ "Chose Save her"] = [//END
SPEAKER("Noah", noah_less_wide, PORTRAIT_SIDE.LEFT),
	TEXT("I went to the art room you were talking about"),
GOTO("Janitor desperate"),
];

global.topics[$ "Janitor desperate"] = [
SPEAKER("Greg", janitor_reliefed_tears, PORTRAIT_SIDE.LEFT),
	CHOICE("Have you found the nails to help me save her??",
		OPTION("I did", "Chose I did"),//end
		OPTION("No", "Chose No"))//end
	
];

global.topics[$ "Chose No"] = [
	SPEAKER("Greg", janitor_sad_tears, PORTRAIT_SIDE.LEFT),
	TEXT("Oh no"),
	CHOICE("My family will be forever lost",
		OPTION("Oh my bad, I did find them", "Chose my bad"),//e d 
		OPTION("Yeah sorry", "Chose Yeah sorry"),// end
		OPTION("I should go", "Chose I should go"))//end

	
];

//item options endings

global.topics[$ "Chose Yeah sorry"] = [//end
	TEXT("I should bury her"),
	SPEAKER("Greg", janitor_sad_tears, PORTRAIT_SIDE.LEFT),
	
];

global.topics[$ "Chose I should go"] = [//end
	TEXT("Oh yes yes"),
	TEXT("I'm sure you've seen me cry enough already"),
	SPEAKER("Greg", janitor_sad_tears, PORTRAIT_SIDE.LEFT),
	
];

global.topics[$ "Chose I did"] = [
GOTO("Chose my bad"),

];

	global.topics[$ "Chose my bad"] = [//end
		GIVE_NAILS_BACK(),
	SPEAKER("Greg", janitor_reliefed_tears, PORTRAIT_SIDE.LEFT),
	TEXT("Oh I can save her now"),
	CHOICE("She'll be alright, my prayers have been heared",
		OPTION("She won't die", "Chose She won't die"),// end
		OPTION("You need to know one more thing", "Chose You need to know one more thing"),/// end
		OPTION("I'm sorry", "Chose I'm sorry"))//end

	
];

	global.topics[$ "Chose She won't die"] = [//END
		SPEAKER("Greg", janitor_reliefed_tears, PORTRAIT_SIDE.LEFT),
	TEXT("My family legacy will live on for years to come"),
	TEXT("I feel that you have more to say"),
	GOTO("Chose I'm sorry"),

	
];

	global.topics[$ "Chose You need to know one more thing"] = [//END
	GOTO("Chose I'm sorry"),

];

	global.topics[$ "Chose I'm sorry"] = [
		SPEAKER("Greg", janitor_confused_tears, PORTRAIT_SIDE.LEFT),
	CHOICE("What is it??",
		OPTION("Small apology", "Chose Small"),// end
		OPTION("Mediocre apology", "Chose Mediocre"),/// end
		OPTION("Big apology", "Chose Big"))//end

	
];

	global.topics[$ "Chose Small"] = [//end
		SPEAKER("Noah", noah_less_wide, PORTRAIT_SIDE.LEFT),
	TEXT("I was the one who.."),
	TEXT("tripped over your mop"),
	TEXT("I'm sorry"),
GOTO("say anything"),

	
];

	global.topics[$ "say anything"] = [
		SPEAKER("Greg", janitor_confused_tears, PORTRAIT_SIDE.LEFT),
	CHOICE("Why didn't you say anything before?",
		OPTION("Truth", "Chose Truth"),//end 
		OPTION("Lie", "Chose Lie"))//end
	
];

	global.topics[$ "Chose Lie"] = [//end
		SPEAKER("Noah", noah_less_wide, PORTRAIT_SIDE.LEFT),
	TEXT("I didn't notice"),
	GOTO("IT give 3"),//end
	
];

	global.topics[$ "Chose Truth"] = [//end
		SPEAKER("Noah", noah_less_wide, PORTRAIT_SIDE.LEFT),
	TEXT("I was afraid of your reaction so I ran away"),//noah
GOTO("stopped before"),

];

global.topics[$ "stopped before"] = [//end
SPEAKER("Greg", janitor_small_tears, PORTRAIT_SIDE.LEFT),
	TEXT("If you stopped before, we could have solved it together"),
	CHOICE("And it might have saved me a lot of tears",
		OPTION("Yeah sorry", "Chose Yeah sorry"),//end
		OPTION("I was too scared to", "Chose I was too scared to"),//end
		OPTION("Running away is easier sometimes", "Chose Running is easier"))//end
	
];

	global.topics[$ "Chose Yeah sorry"] = [//end
	GOTO("IT give 1"),//end
	
];

	global.topics[$ "Chose I was too scared to"] = [//end
	GOTO("IT give 2"),//end
	
];

	global.topics[$ "Chose Running is easier"] = [//end
	GOTO("IT give 2,5"),//end
	
];

	global.topics[$ "Chose Mediocre"] = [//end
	SPEAKER("Noah", noah_less_wide, PORTRAIT_SIDE.LEFT),
	TEXT("The one who tripped over you mop was me"),//noah
	TEXT("I'm sorry for running away and not helping sooner"),//noah
GOTO("IT give 4")
	
];

	global.topics[$ "Chose Big"] = [ //end
		SPEAKER("Noah", noah_less_wide, PORTRAIT_SIDE.LEFT),
	TEXT("I am very sorry for not helping you after I tripped over your broom"),
	TEXT("I should have, but I was too scared to"),
	TEXT("My teacher sent out of the classroom as well and I have not been doing all that well these last few weeks"),
GOTO("oh janitor")

];
	
	global.topics[$ "oh janitor"] = [//end end
SPEAKER("Greg", janitor_small_tears, PORTRAIT_SIDE.LEFT),
	TEXT("Oh, that"),
	CHOICE("seem like a lot to deal with",
		OPTION("I'll manage", "Chose I'll manage"),//end
		OPTION("It is getting hard", "Chose It is getting hard"),//e d
		OPTION("It is yea", "Chose It is yea"))//end
	
];

	global.topics[$ "Chose I'll manage"] = [//end
GOTO("IT give 5"),
];

	global.topics[$ "Chose It is getting hard"] = [//end
GOTO("IT give 6"),
];
	
	global.topics[$ "Chose It is yea"] = [//end
GOTO("IT give 7"),
];
	





//nending item give back janitor

global.topics[$ "IT give 1"] = [
		SPEAKER("Greg", janitor_small_happy_ihs_tears, PORTRAIT_SIDE.LEFT),
	TEXT("It is alright"),
	TEXT("She is alive again thanks to you, so you are forgiven"),

];

global.topics[$ "IT give 2"] = [
		SPEAKER("Greg", janitor_small_happy_ihs_tears, PORTRAIT_SIDE.LEFT),
	TEXT("There was no need to"),
	TEXT("I could have used the consolidation, but all is well now"),
	TEXT("She is alive again with your help, so I believe you've righted your wrongs"),
	TEXT("Thank you, for owning up and helping save her"),

];

global.topics[$ "IT give 2,5"] = [
		SPEAKER("Greg", janitor_small_happy_ihs_tears, PORTRAIT_SIDE.LEFT),
	TEXT("But it's not always the best option"),
	TEXT("It takes time to get to a better ending, but the result is worth it"),

];

	global.topics[$ "IT give 3"] = [
		SPEAKER("Greg", janitor_small_happy_ihs_tears, PORTRAIT_SIDE.LEFT),
	TEXT("Oh, well. At least you admitted it was you"),
	TEXT("Thank you, for helping as well. She will live longer now thanks to you. You're forgiven"),

];

global.topics[$ "IT give 4"] = [
		SPEAKER("Greg", janitor_confused_tears, PORTRAIT_SIDE.LEFT),
	TEXT("Oh"),
	TEXT("You did help me save her, and eventually apologized for your actions"),
GOTO("JANITOR HAPPY SMALL"),

];

global.topics[$ "JANITOR HAPPY SMALL"] = [
			SPEAKER("Greg", janitor_small_happy_ihs_tears, PORTRAIT_SIDE.LEFT),
	TEXT("She is alive again with your help, so I believe you've righted your wrongs"),
	TEXT("I forgive you, because of you my tears will dry. It's alright"),

];

global.topics[$ "IT give 5"] = [
		SPEAKER("Greg", janitor_small_happy_ihs_tears, PORTRAIT_SIDE.LEFT),
	TEXT("Well if you need to talk to anyone, my storage closet is always open"),
	TEXT("Thank you for apologizing as well"),
	TEXT("and since you helped keep her alive, I forgive you."),

];

global.topics[$ "IT give 6"] = [
		SPEAKER("Greg", janitor_small_happy_ihs_tears, PORTRAIT_SIDE.LEFT),
	TEXT("Oh I"),
	TEXT("I forgive you for what you did and thank you, for helping save her."),
	TEXT("And you can always come to me if you need anyone to talk to,"),
	TEXT("but I think it is wiser for you to visit the office for that"),
	TEXT("They have even better ears to listen with"),

];

global.topics[$ "IT give 7"] = [
		SPEAKER("Greg", janitor_small_happy_ihs_tears, PORTRAIT_SIDE.LEFT),
	TEXT("If it helps, I forgive you for your actions"),
	TEXT("You deserve a thank you as well, for helping me save her"),
	TEXT("Just know this, my supply closet is always open"),
	TEXT("Our office doors look even better when they're open"),
	TEXT("you might want to take a look over there as well sometime"),
];

global.topics[$ "IT give 8"] = [
		SPEAKER("Greg", janitor_sad_tears, PORTRAIT_SIDE.LEFT),
	TEXT("No, not yet"),
	TEXT("Please"),
];

//END OF ITEM RETURN OPTION JANITOR


////////////////////////////////////////////////////////////////////////////////////////////////////////////////







//START OF THE TEACHER DIALOGUUEEE
//START teacher dialogue
global.topics[$ "npc teacher"] = [
	SPEAKER("Teacher", teacher_neutral, PORTRAIT_SIDE.LEFT),
		CHOICE("It's freezing in here", //start
			OPTION("huh?", "Chose huh?"), //confused  end
			OPTION("Is it?", "Chose Is it?"), //ignorance  END
			OPTION("Wear a coat", "Chose Wear a coat"),//smart ass  end
			OPTION("Item options", "Chose Item options"))//giving items back unbranched
			
];

//START OF CONFUSED BRANCH
global.topics[$ "Chose huh?"] = [ //confused end
	SPEAKER("Teacher", teacher_neutral, PORTRAIT_SIDE.LEFT),
		CHOICE("It's very cold without a jacket in here",
			OPTION("Seems like your problem", "Chose Seems like your problem"), //88 end
			OPTION("Why don't you wear one", "Chose Why don't you wear one"), // 99 END
			OPTION("It's not", "Chose It's not")) //00 end
];

global.topics[$ "Chose Seems like your problem"] = [ //88 end
	SPEAKER("Teacher", teacher_mad, PORTRAIT_SIDE.LEFT),
		CHOICE("Actually it's the problem of the student who lit my jacket on fire and ran off before I even reacted",
			OPTION("ah", "Chose ah"), //88.1 END
			OPTION("Shouldn't you have been supervising", "Chose Shouldn't you have been supervising"), //88.2 end
			OPTION("There something I could do?", "Chose There something I could do?")) //88.3 end
];

global.topics[$ "Chose ah"] = [ //88.1 END
GOTO("Ending teacher 1")//END

];

global.topics[$ "Chose Shouldn't you have been supervising"] = [ //88.2 end
GOTO("Ending teacher 2")// end

];

global.topics[$ "Chose There something I could do?"] = [ //88.3 end
GOTO("Ending teacher 6")// end

];

global.topics[$ "Chose Why don't you wear one"] = [ //99 END
	SPEAKER("Teacher", teacher_neutral, PORTRAIT_SIDE.LEFT),
		CHOICE("I HAD a jacket but..",
			OPTION("but..", "Chose but.."), //99.1 end
			OPTION("You forgot?", "Chose You forgot?"), // 99.2 end
			OPTION("Something happened to it?", "Chose Something happened to it?")) //99.3 END
];

global.topics[$ "Chose but.."] = [ //99.1 end
	SPEAKER("Teacher", teacher_mad, PORTRAIT_SIDE.LEFT),
		CHOICE("but somebody managed to light it on fire during one of my classses",
			OPTION("what", "Chose what"), //99.11 end
			OPTION("how", "Chose how"), // 99.22 end
			OPTION("huh!", "Chose huh!")) //99.33 end
];

global.topics[$ "Chose what"] = [ //99.11 end
GOTO("Ending teacher 1")//end

];

global.topics[$ "Chose how"] = [ //99.22 end
GOTO("Ending teacher 3")//end

];

global.topics[$ "Chose huh!"] = [ //99.33 end
GOTO("Ending teacher 4")//end

];

global.topics[$ "Chose You forgot?"] = [ //99.2 end
GOTO("Ending teacher 5")//end

];

global.topics[$ "Chose Something happened to it?"] = [ //99.3 END
	SPEAKER("Teacher", teacher_mad, PORTRAIT_SIDE.LEFT),
		CHOICE("jacket got put on fire during a test and the student ran off without saying a word",
			OPTION("oh shit", "Chose oh shit"), //99.31 end
			OPTION("Can I help?", "Chose Can I help"), // 99.32 end
			OPTION("Nasty of them", "Chose Nasty of them")) //99.33 end
];

global.topics[$ "Chose oh shit"] = [ //99.31 end
GOTO("Ending teacher 1")//end

];

global.topics[$ "Chose Can I help"] = [ //99.32 end
GOTO("Ending teacher 6")//end

];

global.topics[$ "Chose Nasty of them"] = [ //99.33 end
GOTO("Ending teacher 8")//end

];

global.topics[$ "Chose It's not"] = [ //00 end
	SPEAKER("Teacher", teacher_neutral, PORTRAIT_SIDE.LEFT),
		CHOICE("You're wearing a sweater",
			OPTION("Wear a jacket", "Chose Wear a jacket"), //00.1 end
			OPTION("yes?", "Chose yes?"), // 00.2 end
			OPTION("Where is yours", "Chose Where is yours")) //00.3 end
			
];

global.topics[$ "Chose Wear a jacket"] = [ //00.1 end
GOTO("Chose Why don't you wear one")//end

];

global.topics[$ "Chose yes?"] = [ //00.2 end
	SPEAKER("Teacher", teacher_neutral, PORTRAIT_SIDE.LEFT),
		CHOICE("Well, I am not. Conclusion: I'm cold",
			OPTION("Your problem", "Chose Your problem"), //00.21 end
			OPTION("Can I help?", "Chose Can I help"), // 00.22 end
			OPTION("Aren't there extra lab coats?", "Chose Aren't there extra lab coats?")) //00.23 end
			
];

global.topics[$ "Chose Your problem"] = [ //00.21 end
GOTO("Chose Seems like your problem")//end

];

global.topics[$ "Chose Can I help"] = [ //00.22 end
GOTO("Ending teacher 6")//end

];

global.topics[$ "Chose Aren't there extra lab coats?"] = [ //00.23 end
GOTO("Ending teacher 7")//end

];

global.topics[$ "Chose Where is yours"] = [ //00.3end
	SPEAKER("Teacher", teacher_neutral, PORTRAIT_SIDE.LEFT),
		TEXT("Don't have a sweater"),
			CHOICE("I prefer to wear jackets, but that's no longer an option now",
				OPTION("Okay?", "Chose Okay?"), //00.31 end
				OPTION("Did something happen to it?", "Chose Did something happen to it?"), // 00.32 end
				OPTION("What??", "Chose What??")) //00.33 end
			
];

global.topics[$ "Chose Okay?"] = [ //00.31 end
GOTO("Ending teacher 1")//end	

];

global.topics[$ "Chose Did something happen to it?"] = [ //00.32 end
GOTO("Chose Something happened to it?")//end

];

global.topics[$ "Chose What??"] = [ //00.33 end
GOTO("Chose Something happened to it?")//end

];


//START OF IGNORANCE BRANCH

global.topics[$ "Chose Is it?"] = [//end
GOTO("Chose It's not")	//end
];



//START OF SMART ASS BRANCH

global.topics[$ "Chose Wear a coat"] = [//end
	SPEAKER("Teacher", teacher_neutral, PORTRAIT_SIDE.LEFT),
		CHOICE("Someone did a hit and run on it", 
			OPTION("A hit and run?", "Chose A hit and run?"), //c55 end
			OPTION("In school?", "Chose In school?"), //c66 end
			OPTION("Interesting", "Chose Interesting"))//c77 end
			
];

global.topics[$ "Chose A hit and run?"] = [//c55 end
GOTO("Chose Something happened to it?")	//end

];

global.topics[$ "Chose In school?"] = [//c66 end
	SPEAKER("Teacher", teacher_mad, PORTRAIT_SIDE.LEFT),
		CHOICE("In front of me even", 
			OPTION("Shouldn't you have stopped it?", "Chose Shouldn't you have stopped it?"), //c55 end
			OPTION("How?", "Chose How?"), //c66 end
			OPTION("Interesting", "Chose Interesting"))//c77 end
			
];

global.topics[$ "Chose Shouldn't you have stopped it?"] = [//c55 end
GOTO("Ending teacher 10")	//end

];

global.topics[$ "Chose How?"] = [//c66 end
GOTO("Chose Something happened to it? ") //end

];

global.topics[$ "Chose Interesting"] = [//c77 end
	SPEAKER("Teacher", teacher_mad, PORTRAIT_SIDE.LEFT),
	TEXT("You think so? I believe it's rather rude"), //end
	GOTO("Ending teacher 9")//end

];


//START OF GIVING ITEMS BACK BRACH
global.topics[$ "Chose Item options"] = [
	SPEAKER("Teacher", teacher_neutral, PORTRAIT_SIDE.LEFT),
	CHOICE("S-s-s-so co-ol-d",
			OPTION("Give the Jacket", "Chose Return item"), //good
			OPTION("Keep the Jacket", "Chose Don't return item"), //bad
			OPTION("Got to find the Jacket", "Chose find jacket"))
			
];

global.topics[$ "Chose find jacket"] = [//bad end
	SPEAKER("Noah", noah_less_wide, PORTRAIT_SIDE.LEFT),
	TEXT("..."), //end

];

global.topics[$ "Chose Don't return item"] = [//bad end
	SPEAKER("Noah", noah_less_wide, PORTRAIT_SIDE.LEFT),
	KEEP_JACKET(),
	TEXT("It really is your problem that you're cold"), //end

];

global.topics[$ "Chose Return item"] = [//good
	GIVE_JACKET_BACK(),
		SPEAKER("Noah", noah_less_wide, PORTRAIT_SIDE.LEFT),
	TEXT("I found a lab coat for you to wear as a jacket"),//this is noah speaking
	GOTO("How kind of"),
];
global.topics[$ "How kind of"] = [//good
		SPEAKER("Teacher", teacher_suprised, PORTRAIT_SIDE.LEFT),
	CHOICE("You did? How kind of you to do. Now I can finish my paperwork in time", //teacher
		OPTION("Small apology", "Chose Small apology"),
		OPTION("Mediocre apology", "Chose Mediocre apology"),
		OPTION("Big apology", "Chose Big apology"))

];

global.topics[$ "Chose Small apology"] = [//good
	SPEAKER("Noah", noah_less_wide, PORTRAIT_SIDE.LEFT),
	TEXT("I'm sorry for the coat thing I did"),//this is noah speaking
	GOTO("OH IT"),
];

global.topics[$ "OH IT"] = [//good
	SPEAKER("Teacher", teacher_suprised, PORTRAIT_SIDE.LEFT),
	TEXT("Oh it was you?"),
	GOTO("YES NOAH"),
];

global.topics[$ "YES NOAH"] = [//good
	SPEAKER("Noah", noah_less_wide, PORTRAIT_SIDE.LEFT),
	TEXT("Yes"), //NOAH
	GOTO("TEACHER APOLOGIZES"),
];

global.topics[$ "TEACHER APOLOGIZES"] = [//good
	SPEAKER("Teacher", teacher_neutral, PORTRAIT_SIDE.LEFT),
	TEXT("Well thank you for apologizing."),
	TEXT("I should have helped you along more as well, so I apologize for that"), //TEACHER SPEAKING
		
];

global.topics[$ "Chose Mediocre apology"] = [//good
	SPEAKER("Noah", noah_less_wide, PORTRAIT_SIDE.LEFT),
	TEXT("I'm sorry for setting your coat on fire and running off. My thoughts were all over the place"),//this is noah speaking
	GOTO("QUITE ALRIGHT"),
];

global.topics[$ "QUITE ALRIGHT"] = [//good
	SPEAKER("Teacher", teacher_neutral, PORTRAIT_SIDE.LEFT),
	TEXT("Oh it's quite alright. Everybody has a scattered mind every now and then"), 
	TEXT("If there's anything you want to talk about, I'm always here."), //TEACHER SPEAKING

];

global.topics[$ "Chose Big apology"] = [//good
SPEAKER("Noah", noah_less_wide, PORTRAIT_SIDE.LEFT),
	TEXT("I'm sorry for setting your coat on fire and just running away"),
	TEXT("I haven't been feeling so well mentaly lately and something happened before I got to your class which messed with my head more"),//this is noah speaking
GOTO("OH DEAR TEACHER"),
];

global.topics[$ "OH DEAR TEACHER"] = [//good
	SPEAKER("Teacher", TEACHER_CONCERNED, PORTRAIT_SIDE.LEFT),
		CHOICE("Oh dear. Would you like to talk to me after class about it?"), 
			OPTION("That would be nice", "Chose That would be nice"),
			OPTION("Yes please", "Chose Yes please"),
			OPTION("That's not nececary", "Chose That's not nececary"),

];

global.topics[$ "Chose That would be nice"] = [//good
	SPEAKER("Teacher", teacher_neutral, PORTRAIT_SIDE.LEFT),
	TEXT("You can pretend to pack your stuff very slowly and wait for everyone to leave the room if that would make you feel more at ease"),

];

global.topics[$ "Chose Yes please"] = [//good
GOTO("Chose That would be nice")

];

global.topics[$ "Chose That's not nececary"] = [//good
	SPEAKER("Teacher", teacher_neutral, PORTRAIT_SIDE.LEFT),
	TEXT("It might be nice to get some stuff of your chest"),
	TEXT("You can always talk to me if you change your mind")

];







//TECHER ENDINGS

global.topics[$ "Ending teacher 1"] = [
	TEXT("yea, anyways. There's jacket in the basement I believe."), 
	TEXT("Would you be willing to help me out? I can't leave my office behind unsupervised"),
	TALK_TEACHER(),
	SPEAKER("Teacher", teacher_neutral, PORTRAIT_SIDE.LEFT),

];

global.topics[$ "Ending teacher 2"] = [
	TEXT("Whatever, instead of thinking about that I could really use a jacket from the basement to finish these papers faster"), 
	TALK_TEACHER(),
	SPEAKER("Teacher", teacher_mad, PORTRAIT_SIDE.LEFT),

];

global.topics[$ "Ending teacher 3"] = [
	TEXT("It seemed, that they didn't pay attention last class and thought they could just do it right first try without explanation."),
	TEXT("But enough of that, I should grab a jacket from the basement"), 
	TALK_TEACHER(),
	SPEAKER("Teacher", teacher_mad, PORTRAIT_SIDE.LEFT),

];

global.topics[$ "Ending teacher 4"] = [
	TEXT("Still pissed about it, because now I need to get a jacket from the basement"),
	TALK_TEACHER(),
	SPEAKER("Teacher", teacher_mad, PORTRAIT_SIDE.LEFT),

];

global.topics[$ "Ending teacher 5"] = [
	TEXT("One of my students hates me and managed to turn it into ashes. I'm sure there's a replacement in the basement, but i'm stuck in the cold with this paperwork"),
	TALK_TEACHER(),
	SPEAKER("Teacher", teacher_mad, PORTRAIT_SIDE.LEFT),

];

global.topics[$ "Ending teacher 6"] = [
	TEXT("If you could find a jacket in the basement for me? I'd be much faster with all this paperwork"), 
	TALK_TEACHER(),
	SPEAKER("Teacher", teacher_neutral, PORTRAIT_SIDE.LEFT),

];

global.topics[$ "Ending teacher 7"] = [
	TEXT("In the basement somewhere, but I can't leave this office before I've completed my work"),
	TALK_TEACHER(),
	SPEAKER("Teacher", teacher_neutral, PORTRAIT_SIDE.LEFT),

];

global.topics[$ "Ending teacher 8"] = [
	TEXT("To make it worse, I don't remember who it was"),
	TEXT("Finishing these papers in this cold is also undoable, maybe I should get a jacket from the basement"), 
	TALK_TEACHER(),
	SPEAKER("Teacher", teacher_neutral, PORTRAIT_SIDE.LEFT),
];

global.topics[$ "Ending teacher 9"] = [
	TEXT("Because of them I probably have to go to the basement to stop my shivers"),
	TALK_TEACHER(),
	SPEAKER("Teacher", teacher_mad, PORTRAIT_SIDE.LEFT),

];

global.topics[$ "Ending teacher 10"] = [
	TEXT("I should have, but I don't want to think about that right now. I should finish my paperwork first."),
	TEXT("Which is hard to do since I can't concentrate in this cold, there might be a coat in the basement I can use"), 
	TALK_TEACHER(),
	SPEAKER("Teacher", teacher_mad, PORTRAIT_SIDE.LEFT),

];