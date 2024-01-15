
if (!is_picked_up) {
   
    var player_collision = instance_place(x, y, obj_man);

    if (player_collision != noone) {
       
        if keyboard_check_pressed(ord("E")) {
          
            is_picked_up = true;
			player_collision.has_jacket = true;
			shield_active = true;
            image_alpha = 0;
            
        }
    }
} else {
  
    x = obj_man.x;
    y = obj_man.y;
}



