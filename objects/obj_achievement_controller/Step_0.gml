
var newTaskMessage = argument0;



if (keyboard_check_pressed(ord("T"))) {
    global.showTaskBar = !global.showTaskBar;
}

//task bar ui
if ((inst_man.talked_npc1 == true) and !task1_notified) {
	task1_notified = true;
	new_task_added = true; 
	
	alarm[0] = 180;

}

if ((inst_man.talked_npc2 == true) and !task2_notified) {
	task2_notified = true;
    new_task_added = true;
	
    alarm[0] = 180;
}

if ((inst_man.talked_npc3 == true) and !task3_notified) {
	task3_notified = true;
    new_task_added = true;
	
    alarm[0] = 180;
}

//achievement if player gets the items 

if ((inst_man.has_nails == true) and !achievement1) {
	achievement1 = true;
    achievement1_show = true;
    alarm[0] = 180;
}

if ((inst_man.has_shoes == true) and !achievement2) {
	achievement2 = true;
    achievement2_show = true;
    alarm[0] = 180;
}


if ((inst_man.has_jacket == true) and !achievement3) {
	achievement3 = true;
    achievement3_show = true;
    alarm[0] = 180;
}






