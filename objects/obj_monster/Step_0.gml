if (move_towards_player) {
	speed = 30;
	
	move_towards_point(obj_man.x, obj_man.y, speed)
    //var direction_to_player = point_direction(x, y, obj_man.x, obj_man.y);
    //x += lengthdir_x(speed, direction_to_player);
    //y += lengthdir_y(speed, direction_to_player);
    
	} else {
        speed = 0;
    }
  

