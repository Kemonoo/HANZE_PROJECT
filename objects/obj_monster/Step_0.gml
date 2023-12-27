
var target_x = obj_man.x;
var target_y = obj_man.y;


if (move_towards_player) {
    var dir_to_player = point_direction(x, y, target_x, target_y);
    var move_speed = 7; // Adjust the speed as needed

    // Check for collisions with walls
    if (place_meeting(x + lengthdir_x(move_speed, dir_to_player), y + lengthdir_y(move_speed, dir_to_player), obj_wall)) {
  
        var step = 45; // Adjust the step angle based on your needs

        for (var i = 0; i < 360 / step; i++) {
            dir_to_player += step;

            if (!place_meeting(x + lengthdir_x(move_speed, dir_to_player), y + lengthdir_y(move_speed, dir_to_player), obj_wall)) {
                // If a direction is found without a wall, set the new target position
                target_x = x + lengthdir_x(move_speed, dir_to_player);
                target_y = y + lengthdir_y(move_speed, dir_to_player);
                break;
            }
        }
    } else {
        // If no wall is in the way, set the target position to the player
        target_x = obj_man.x;
        target_y = obj_man.y;
    }

  
    move_towards_point(target_x, target_y, move_speed);
} else {
    // Stop moving if not chasing the player
    speed = 0;
}














audio_emitter_position(audio_emitter, x, y, 0);