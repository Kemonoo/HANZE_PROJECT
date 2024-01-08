
y += lengthdir_y(speed, direction);


// Check for collision 
if (place_meeting(x, y, obj_stoppoint_beam)) {
    // Reverse the direction when the laser beam hits the wall
    direction = -direction;
}

if (place_meeting(x, y, obj_man)) {

	global.death_count += 1;


	room_goto(room_bedroom);


}