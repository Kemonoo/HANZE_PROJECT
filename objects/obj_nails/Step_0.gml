
if (!is_picked_up) {
   
    var player_collision = instance_place(x, y, obj_Noah);

    if (player_collision != noone) {
		
		if instance_exists(obj_Noah) {
		

		if (player != noone && distance_to_object(player) < radius) {
       
			if keyboard_check_pressed(ord("E")) {
          
				is_picked_up = true;
				player_collision.has_nails = true;
				press_e = false;
				image_alpha = 0;
				audio_play_sound(Item_pickup, 1, false);
			}
            
			}
		}
	}
} else {
  
    x = obj_Noah.x;
    y = obj_Noah.y;
	 
    if (mouse_check_button_pressed(mb_left)) {
		if(num_nails<3) { 
			var nails_instance = instance_create_layer(x, y, "Instances", obj_throw_nails);
			nails_instance.speed = shooting_speed;
			nails_instance.direction = point_direction(x, y, mouse_x, mouse_y);
			num_nails++;
			
			alarm[0] = 100;
			audio_play_sound(nail_throw_final, 1, false)
		}
    }
}


if (num_nails == 3){
	draw_cooldown = true;
}



