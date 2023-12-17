

// Move the projectile
x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);

// Adjust the sprite angle to face the direction it's moving
image_angle = direction;

// Check for collision with walls or other obstacles
if (place_meeting(x, y, obj_wall)) {
    // Destroy the projectile if it collides with a wall or obstacle
    instance_destroy();
}






