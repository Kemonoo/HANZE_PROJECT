/// @description Insert description here
// You can write your code in this editor


if instance_exists(obj_locker)
{
	if abs(obj_Noah.x - x) < outside_detect_radius and abs(obj_Noah.y - y) < outside_detect_radius
	{
		if keyboard_check_pressed(ord("E"))
		{
			if obj_Noah.inside_object
			{
				obj_Noah.inside_object = false;
				obj_Noah.visible = true;
				camera_set_view_target(view_camera[0], obj_Noah.id);
				inside_time_limit = 0;
			}
			else
			{
			
				obj_Noah.inside_object = true;
				obj_Noah.visible = false;
				camera_set_view_target(view_camera[0], id);
				inside_time_limit = 5;	// seconds
				alarm_set(0, 60)
			}
		}
	}
}