

if (obj_Noah.inside_object) and (--inside_time_limit > 0)
{
	alarm_set(0, 60)
	
}
else 
{
	obj_Noah.inside_object = false;
	obj_Noah.visible = true;
	camera_set_view_target(view_camera[0], obj_Noah.id);
}