
y += lengthdir_y(speed, direction);


// Check for collision 
if (place_meeting(x, y, obj_stoppoint_beam)) {
    // Reverse the direction when the laser beam hits the wall
    direction = -direction;
	
	
}



if (timer <= 0) {
    visible = !visible; // Toggle visibility

    // Reset the counter based on the visibility state
    timer = visible ? hiddenDuration : hiddenDuration / 2;
} else {
    // Decrement the counter
    timer--;
}

if (visible && place_meeting(x, y, obj_Noah)) {

	global.death_count += 1;


	room_goto(room_jumpscare);



}