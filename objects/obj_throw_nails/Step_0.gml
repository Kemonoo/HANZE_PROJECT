

// Move the projectile
x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);

// Adjust the sprite angle to face the direction it's moving
image_angle = direction;


if (place_meeting(x, y, obj_wall)) {
    // Destroy the projectile if it collides with a wall or obstacle
    instance_destroy();
} else {
    // Move the projectile at the normal speed
    x += lengthdir_x(normal_speed, direction);
    y += lengthdir_y(normal_speed, direction);
    
    // Check for collision with other objects
    var collision_obj = instance_place(x, y, obj_enemy); // Replace "obj_enemy" with the actual enemy object
    
    if (collision_obj != noone) {
        // Apply knockback to the enemy
        var knockback_direction = point_direction(collision_obj.x, collision_obj.y, x, y);
        collision_obj.x += lengthdir_x(knockback_distance, knockback_direction);
        collision_obj.y += lengthdir_y(knockback_distance, knockback_direction);
        
        // Check if the object has an sp property
        if (variable_instance_exists(collision_obj, "sp")) {
            // Slow down the collision_obj's sp
            collision_obj.sp -= collision_slowdown;
        }
        
        // Start the collision timer
        collision_timer = collision_duration;
    }
    
    // Update the collision timer
    if (collision_timer > 0) {
        collision_timer -= 1;
    } else {
        // Return the collision_obj's sp to normal after the collision duration
        if (collision_obj != noone && variable_instance_exists(collision_obj, "sp")) {
            collision_obj.sp = normal_speed;
        }
        
   
        speed = normal_speed;
    }
}


