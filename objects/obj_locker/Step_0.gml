/// @description Insert description here
// You can write your code in this editor


if instance_exists(obj_locker)
{
	if abs(obj_man.x - x) < outside_detect_radius and abs(obj_man.y - y) < outside_detect_radius
	{
		if keyboard_check_pressed(ord("E"))
		{
			if obj_man.inside_object
			{
				obj_man.inside_object = false;
				obj_man.visible = true;
				camera_set_view_target(view_camera[0], obj_man.id);
				inside_time_limit = 0;
			}
			else
			{
			
				obj_man.inside_object = true;
				obj_man.visible = false;
				camera_set_view_target(view_camera[0], id);
				inside_time_limit = 3;	// seconds
				alarm_set(0, 60)
			}
		}
	}
}