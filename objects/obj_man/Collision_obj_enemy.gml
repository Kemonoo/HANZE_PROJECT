// Add one to deathcount

if (shield_active == true) && (place_meeting(x, y, obj_enemy)){
	x -= 100 * lengthdir_x(2, direction);
    y -= 100 * lengthdir_y(2, direction);
	alarm[3] = 0;
}

if (shield_active == false) && (place_meeting(x, y, obj_enemy)){
	global.death_count += 1;

	room_goto(room_jumpscare);
}


