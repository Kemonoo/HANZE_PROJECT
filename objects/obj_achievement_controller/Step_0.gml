
var newTaskMessage = argument0;



if (keyboard_check_pressed(ord("T"))) {
    global.showTaskBar = !global.showTaskBar;
}


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







