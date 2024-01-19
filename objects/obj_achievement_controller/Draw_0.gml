

draw_self();

draw_set_font(fnt_press);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
//draw new task added
if (new_task_added == true) {
    draw_text(obj_Noah.x - 430, obj_Noah.y - 220, "New task added!");
	
	
}
//draw achieve,ents 
if (achievement1_show == true) {
    draw_text(obj_Noah.x - 340, obj_Noah.y - 220, " Achievement(wow you got sum nails!) ");
	
	
}

if (achievement2_show == true) {
    draw_text(obj_Noah.x - 340, obj_Noah.y - 220, " Achievement(wow you got sum cool kicks!) ");
	
	
}

if (achievement3_show == true) {
    draw_text(obj_Noah.x - 340, obj_Noah.y - 220, " Achievement(wow nice coat) ");
	
	
}



// draw trask bar 

if (global.showTaskBar) {
    draw_sprite(spr_task_box, 0, obj_Noah.x - 510, obj_Noah.y - 250);
    draw_text(obj_Noah.x - 430, obj_Noah.y - 220, "TASK BAR");

	if (inst_man.talked_npc1 == true) {
		draw_text(obj_Noah.x - 430, obj_Noah.y - 180,"- Get the shoes");
	
	}

	if (inst_man.talked_npc2 == true) {
		draw_text(obj_Noah.x - 427, obj_Noah.y - 125,"- Get the nails");
	   
	}


	if (inst_man.talked_npc3 == true) {
		draw_text(obj_Noah.x - 425, obj_Noah.y - 70,"- Get the jacket");
	}

}



	
   
   



