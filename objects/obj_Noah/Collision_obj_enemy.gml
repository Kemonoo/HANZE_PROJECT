// Add one to deathcount

nearest_enemy = instance_nearest(x, y, obj_enemy);
if (place_meeting(x, y, nearest_enemy) && (shield_active == true)){
    knockback_direction = point_direction(nearest_enemy.x, nearest_enemy.y, x, y);
    x += lengthdir_x(player_speed*40, knockback_direction);
    y += lengthdir_y(player_speed*40, knockback_direction);
	alarm[3] = 1;
	alarm[5] = 7;
	alarm[4] = 100;
	audio_play_sound(noah_hit_sound_final, 1, false);
}





if (shield_active == false) && (place_meeting(x, y, obj_enemy)){
	global.death_count += 1;

	room_goto(room_jumpscare);
}


