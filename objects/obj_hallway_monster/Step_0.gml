x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);


image_angle = direction;








if (point_distance(x, y, obj_man.x, obj_man.y) < follow_distance) && follow_path {
  
	move_towards_point(obj_man.x, obj_man.y, sp); 
	path_end()
	follow_path = false;
	
}

if (point_distance(x, y, obj_man.x, obj_man.y) > 400) && !follow_path{
	x = 8319;
	y = 3457;
	path_start(Path1, sp, path_action_restart, false);
	follow_path = true;
}



