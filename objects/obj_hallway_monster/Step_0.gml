x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);


image_angle = direction;


if (point_distance(x, y, obj_man.x, obj_man.y) < follow_distance) {
  
	move_towards_point(obj_man.x, obj_man.y, 4); 
}