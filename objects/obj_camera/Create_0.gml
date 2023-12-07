/// @description Insert description here
// You can write your code in this editor

obj_to_follow_id = obj_player.id;

view_enabled = true;
view_visible[0] = true;


view_xport[0] = 0;
view_yport[0] = 0;
view_wport[0] = 500;
view_hport[0] = 500;

view_camera[0] = camera_create_view(0, 0, 500, 500, 0, obj_to_follow_id, -1, -1, 400, 400);