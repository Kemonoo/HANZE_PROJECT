var target_x = obj_Noah.x;
var target_y = obj_Noah.y;

var delta = 0.1; // Adjust this value based on your needs

var horizontalChange = abs(old_x - x);
var verticalChange = abs(old_y - y);

if (horizontalChange > verticalChange)
{
    if (old_x < x - delta)
    {
        sprite_index = Hall_Monster_Walk__Right;
    }
    else if (old_x > x + delta)
    {
        sprite_index = Hall_Monster_Walk__Left;
    }
}
else
{
    if (old_y > y)
    {
        sprite_index = Hall_Monster_Walk__Up;
    }
    else if (old_y < y)
    {
        sprite_index = Hall_Monster_Walk__Down;
    }
}

old_x = x;
old_y = y;






if (point_distance(x, y, obj_Noah.x, obj_Noah.y) < follow_distance) && follow_path {
	move_towards_player = true 
	path_end()
	follow_path = false;
	audio_play_sound(CHASE_SOUND_HALLWAY, 1, false);
	
}




if (move_towards_player) {
   
    var move_speed = 5; // the speed
	var dir_to_player = point_direction(x, y, target_x, target_y);

    // Check for collisions with walls
    if (place_meeting(x + lengthdir_x(move_speed, dir_to_player), y + lengthdir_y(move_speed, dir_to_player), obj_wall)) {
  
        var step = 15; 

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
        target_x = obj_Noah.x;
        target_y = obj_Noah.y;
    }


  
    move_towards_point(target_x, target_y, move_speed);
	
} else if  ((point_distance(x, y, obj_Noah.x, obj_Noah.y) > 600) && !follow_path) {
		x = 8319;
		y = 3457;
		path_start(Path1, 4, path_action_restart, false);  
		follow_path = true;
		}
 

audio_emitter_position(audio_emitter, x, y, 0);



