/// @description Insert description here
// You can write your code in this editor



// Step Event

// Check for input or condition to throw the item
if (mouse_check_button_pressed(mb_left)) {
    // Create the throwable item instance at the player's position
    var throwable_instance = instance_create_layer(x, y, "Instances", obj_nails);

    // Set the speed and direction of the thrown item
    throwable_instance.speed = 5; // Adjust the speed as needed
    throwable_instance.direction = point_direction(x, y, mouse_x, mouse_y);

    // You can add additional code here, such as setting a cooldown
}
// Step Event

// Move the throwable item
if (!place_meeting(x + lengthdir_x(speed, direction), y + lengthdir_y(speed, direction), obj_wall)) {
    // Move only if there's no collision with obj_wall (adjust obj_wall to your wall object)
    x += lengthdir_x(speed, direction);
    y += lengthdir_y(speed, direction);
} else {
    // Destroy the throwable item if it collides with a wall or other obstacle
    instance_destroy();
}







