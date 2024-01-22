
var target_x = obj_Noah.x;
var target_y = obj_Noah.y;




if (speed == 0 && (direction <= 90 || direction >= 270)) {
    sprite_index = Bat_Monster_odle;
}
if (speed == 0 && (direction > 90 || direction < 270)) {
	sprite_index = Bat_Monster_odle;
	image_xscale = 1;
}
if (direction > 90 && direction < 270) {
    sprite_index = Bat_Monster_left;
}
     
if (direction <= 90 || direction >= 270) {
    sprite_index = Bat_Monster_right;
     
} 



 

if (move_towards_player) {
    var dir_to_player = point_direction(x, y, target_x, target_y);
    var move_speed = 9; // the speed

    // Check for collisions with walls
    if (place_meeting(x + lengthdir_x(move_speed, dir_to_player), y + lengthdir_y(move_speed, dir_to_player), obj_wall && obj_atticbox && obj_atticbox2 && obj_atticbox3 && obj_atticbox4)) {
  
        var step = 45; 

        for (var i = 0; i < 360 / step; i++) {
            dir_to_player += step;

            if (!place_meeting(x + lengthdir_x(move_speed, dir_to_player), y + lengthdir_y(move_speed, dir_to_player), obj_wall && obj_atticbox && obj_atticbox2 && obj_atticbox3 && obj_atticbox4)) {
                // If a direction is found without a wall, set the new target position
                target_x = x + lengthdir_x(move_speed, dir_to_player);
                target_y = y + lengthdir_y(move_speed, dir_to_player);
                break;
            }
        }
    } else {
        // If no wall is in the way, set the target position to the player
        target_x = obj_Noah.x;
        target_y = obj_Noah.y;
    }

  
    move_towards_point(target_x, target_y, move_speed);
} else {
    // Stop moving if not chasing the player
    speed = 0;
}




audio_emitter_position(audio_emitter, x, y, 0);