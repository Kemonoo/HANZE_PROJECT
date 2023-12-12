

if (obj_man.inside_object) and (--inside_time_limit > 0)
{
	alarm_set(0, 60)
	
}
else 
{
	obj_man.inside_object = false;
	obj_man.visible = true;
	camera_set_view_target(view_camera[0], obj_man.id);
}