// Check if it's time to toggle visibility
if (timer <= 0) {
    visible = !visible; // Toggle visibility

    // Reset the counter based on the visibility state
    timer = visible ? hiddenDuration : hiddenDuration / 2;
} else {
    // Decrement the counter
    timer--;
}

// If the light is visible and collides with the player, restart the game
//if (visible && place_meeting(x, y, obj_man)) {
    // Call the custom restart function from obj_controller
  //  game_restart();
//}



