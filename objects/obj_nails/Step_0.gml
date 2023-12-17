
// Step Event of obj_pickup_and_shoot

// Check if the item is not picked up
if (!is_picked_up) {
    // Check for collision with the player
    var player_collision = instance_place(x, y, obj_man);

    if (player_collision != noone) {
        // Check if the player pressed the pickup key (e.g., spacebar)
        if keyboard_check_pressed(ord("E")) {
            // Set is_picked_up to true
            is_picked_up = true;
            // Make the item invisible
            image_alpha = 0;
            // Optionally, you can play a sound or perform other actions here
        }
    }
} else {
    // If the item is picked up, follow the player
    x = obj_man.x;
    y = obj_man.y;

    // Check if the player pressed the shoot key (e.g., left mouse button)
    if (mouse_check_button_pressed(mb_left)) {
        // Create the projectile (obj_nails)
        var nails_instance = instance_create_layer(x, y, "Instances", obj_throw_nails);
        nails_instance.speed = shooting_speed;
        nails_instance.direction = point_direction(x, y, mouse_x, mouse_y);
    }
}
