// Step event of the enemy object
var angle_to_player = point_direction(x, y, obj_man.x, obj_man.y);

// Adjust the angle range as needed
if (angle_to_player > 45 && angle_to_player < 315) {
    approaching = true;
} else {
    approaching = false;
}

// Step event of the enemy object
if (approaching) {
    // Adjust the speed as needed
    move_towards_point(obj_man.x, obj_man.y, speed)
}



