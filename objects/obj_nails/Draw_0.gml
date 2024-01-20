draw_self()





	
if ((player != noone && distance_to_object(player) < radius) && (press_e == true)){
	
	draw_text(obj_Noah.x - 100, obj_Noah.y - 70,"Press E");
	
}


if (draw_cooldown == true){
	depth -= 102;
	
	draw_sprite(spr_cool_down_bar, 0, obj_Noah.x + 100, obj_Noah.y - 380);
	
}




