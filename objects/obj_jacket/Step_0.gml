
if (!is_picked_up) {
   
   
    var player_collision = instance_place(x, y, obj_man);

    if (player_collision != noone) {
		
		if instance_exists(obj_man) {
		

			if (player != noone && distance_to_object(player) < radius) {
       
				if keyboard_check_pressed(ord("E")) {
          
					is_picked_up = true;
					press_e = false;
					player_collision.has_jacket = true;
					inst_man.shield_active = true;
					image_alpha = 0;
					audio_play_sound(Item_pickup, 1, false);
			
				}
			} 
        }
    }
} else {
  
    x = obj_man.x;
    y = obj_man.y;
}



