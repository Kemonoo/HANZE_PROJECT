// Step event of the enemy object (obj_stalker)

// Calculate angle between enemy and player
var angle_to_player = point_direction(x, y, obj_man.x, obj_man.y);

// Define the angle range for the enemy to freeze (adjust as needed)
var freeze_angle_range = 360; // This is the half-angle, so the total angle range is 90 degrees

// Check if the enemy is within the angle range of the player's facing direction
if (abs(angle_difference(obj_man.direction, angle_to_player)) < freeze_angle_range) {
    speed = 0; // Stop moving
} else {
    speed = 4; // Move normally
}

// Move towards the player if allowed
move_towards_point(obj_man.x, obj_man.y, 3);
