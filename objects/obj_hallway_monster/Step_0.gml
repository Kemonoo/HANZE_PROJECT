



if (image_angle > 0)
{
    sprite_index = Hall_Monster_Walk__Right;
}
else if (image_angle > 270)
{
    sprite_index = Hall_Monster_Walk__Up;
}
else if (image_angle > 90)
{
    sprite_index = Hall_Monster_Walk__Down;
}
else if (image_angle > 0)
{
    sprite_index = Hall_Monster_Walk__Left;
}


if (point_distance(x, y, obj_man.x, obj_man.y) < follow_distance) && follow_path {
	move_towards_point(obj_man.x, obj_man.y, sp); 
	path_end()
	follow_path = false;
	
}

if (point_distance(x, y, obj_man.x, obj_man.y) > 600) && !follow_path{
	x = 8319;
	y = 3457;
	path_start(Path1, sp, path_action_restart, false);  
	follow_path = true;
}




