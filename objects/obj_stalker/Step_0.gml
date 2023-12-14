


var angle_to_player = point_direction(x, y, obj_man.x, obj_man.y);


var freeze_angle_range = 360; 


if (abs(angle_difference(obj_man.direction, angle_to_player)) < freeze_angle_range) {
    speed = 0;
	
    speed = 4;
}


move_towards_point(obj_man.x, obj_man.y, 3);
