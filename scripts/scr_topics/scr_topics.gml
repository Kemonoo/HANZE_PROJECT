global.topics = {};
//bully dialogue
global.topics[$ "Example"] = [
	SPEAKER("Jerk", spr_npc_idle, PORTRAIT_SIDE.LEFT),
	CHOICE("Hey, I know you..",
		OPTION("gotta run", "Chose gotta run"),
		OPTION("no", "Chose no"),
		OPTION("yes", "Chose yes"))
];

global.topics[$ "Chose yes"] = [
	TEXT("Thought so "),
	SPEAKER("Jerk", spr_npc_mad, PORTRAIT_SIDE.LEFT),
	GOTO("End of Jerk Story")
];


global.topics[$ "Chose no"] = [
	TEXT("CAP I DO KNOW YOU"),
	SPEAKER("Jerk", spr_npc_mad, PORTRAIT_SIDE.LEFT),
	GOTO("End of Jerk Story")
];

global.topics[$ "Chose gotta run"] = [
	SPEAKER("Jerk", spr_npc_mad, PORTRAIT_SIDE.LEFT),
	TEXT("Hey get back here!")
	
];

global.topics[$ "End of Jerk Story"] = [
	TEXT("You made my boy spill his drink on my shoes. Had to walk around all day on my socks, because my shoes were drying in the attic."),
	TEXT("That was cold as shit and you haven't even said sorry yet. I might forgive you if you bring me back my shoes.."),
	SPEAKER("Jerk", spr_npc_mad, PORTRAIT_SIDE.LEFT)
	
];
//old man dialogue
global.topics[$ "npc old man"] = [
	SPEAKER("OLD MAN", spr_npc_mad, PORTRAIT_SIDE.LEFT),
	TEXT("Crying noises"),
	TEXT("My precious family heirloom. Someone tripped over it and now it's broken."),
	TEXT("Some nails might fix it, but I don't want to leave her here alone to go to the art room.."),
	SPEAKER("OLD MAN", spr_npc_mad, PORTRAIT_SIDE.LEFT)
];