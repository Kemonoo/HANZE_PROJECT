/// @description Insert description here
// You can write your code in this editor

if abs(obj_player.x - x) < outside_detect_radius and abs(obj_player.y - y) < outside_detect_radius
{
	if keyboard_check_pressed(ord("E"))
	{
		if obj_player.inside_object
		{
			obj_player.inside_object = false;
			obj_player.visible = true;
			obj_camera.obj_to_follow_id = obj_player;
		}
		else
		{
			
			obj_player.inside_object = true;
			obj_player.visible = false;
			obj_camera.obj_to_follow_id = id;	
		}
	}
}