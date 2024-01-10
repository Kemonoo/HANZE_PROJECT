
if (!is_picked_up) {
   
    var player_collision = instance_place(x, y, obj_man);

    if (player_collision != noone) {
       
        if keyboard_check_pressed(ord("E")) {
          
            is_picked_up = true;
			
            image_alpha = 0;
            
        }
    }
} else {
  
    x = obj_man.x;
    y = obj_man.y;
	 
	 
   
    if (mouse_check_button_pressed(mb_left)) {
    
        var nails_instance = instance_create_layer(x, y, "Instances", obj_throw_nails);
        nails_instance.speed = shooting_speed;
        nails_instance.direction = point_direction(x, y, mouse_x, mouse_y);
    }
}
