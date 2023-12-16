// Assuming this code is in the "Audio Object"

// Check the current room
switch (room) {
    case room_hallway: {
        // Stop the sound for other rooms
        audio_stop_sound(hallway_placeholder);
		
		//stop the monster lullaby sound
		audio_stop_sound(monster_lullaby);

        // Start playing the hallway sound
        audio_play_sound(hallway_placeholder, 0, 1);
    } break;

    // Add more cases for other rooms as needed

    default: {
        // Stop the hallway sound when entering a room that is not room_hallway
        audio_stop_sound(hallway_placeholder);
    } break;
}

