/// @description Insert description here
// You can write your code in this editor

//move_towards_point( obj_player.x, obj_player.y, speed )



if obj_player.inside_object and (x != xstart or y != ystart)
{
	move_towards_point(xstart, ystart, 5)
}

else if abs(obj_player.x - x) < outside_detect_radius and abs(obj_player.y - y) < outside_detect_radius
	
{
	if abs(obj_player.x - x) > inside_detect_radius and abs(obj_player.y - y) <= inside_detect_radius
		move_towards_point( obj_player.x, y, 3)
	else if  abs(obj_player.x - x) <= inside_detect_radius and abs(obj_player.y - y) > inside_detect_radius
		move_towards_point( x, obj_player.y, 3)
	else 
		speed = 0
}
else speed = 0