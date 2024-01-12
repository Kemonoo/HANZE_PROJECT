// Assuming this code is in the "Audio Object"

// HALLWAY SOUND. Switch room is checking what room you're in so it can play the correct sound.
switch (room) {
    case room_hallway: {
        // Stop the sound for other rooms
        audio_stop_sound(unown_ambienceNEW_HALLWAY_LOOPED);
		
		//stop the monster lullaby sound
		audio_stop_sound(monster_lullaby);
		
		//stop the attic
		audio_stop_sound(Attic_Ambience_FINAL_MIX_INGAME);

        // Start playing the hallway sound
        audio_play_sound(unown_ambienceNEW_HALLWAY_LOOPED, 0, 1);
    } break;

    // Add more cases for other rooms as needed


    default: {
        // Stop the hallway sound when entering a room that is not room_hallway
        audio_stop_sound(unown_ambienceNEW_HALLWAY_LOOPED);
    } break;
}
//ART ROOM LEVEL MUSIC
switch (room) {
    case room_puzzle2: {
        // Stop the sound for other rooms
        audio_stop_sound(unown_ambienceNEW_HALLWAY_LOOPED);
        // Start playing the art room music
        audio_play_sound(The_Art_Room__FINAL_MIX_INGAME_VERSION_, 0, 1);
        // Exit the switch statement
        break;
    }
	
	
	
 default: {
        // Stop the hallway sound when entering a room that is not art room
        audio_stop_sound(The_Art_Room__FINAL_MIX_INGAME_VERSION_);
    } break;
}


//CLASSROOM 1 MUSIC
switch (room) {
    case room_class1: {
        // Stop the sound for other rooms
        audio_stop_sound(unown_ambienceNEW_HALLWAY_LOOPED);
        // Start playing the art room music
        audio_play_sound(Noah_s_theme_Lullaby, 0, 1);
        // Exit the switch statement
        break;
    }
	
 default: {
        // Stop the hallway sound when entering a room that is not classroom
        audio_stop_sound(Noah_s_theme_Lullaby);
    } break;
}

//CLASSROOM 1 MUSIC
switch (room) {
    case room_class2: {
        // Stop the sound for other rooms
        audio_stop_sound(unown_ambienceNEW_HALLWAY_LOOPED);
        // Start playing the art room music
        audio_play_sound(Noah_s_theme_Lullaby, 0, 1);
        // Exit the switch statement
        break;
    }
	
 default: {
        // Stop the hallway sound when entering a room that is not classroom
        audio_stop_sound(Noah_s_theme_Lullaby);
    } break;
}

//CLASSROOM 3 MUSIC
switch (room) {
    case room_class3: {
        // Stop the sound for other rooms
        audio_stop_sound(unown_ambienceNEW_HALLWAY_LOOPED);
        // Start playing the art room music
        audio_play_sound(Noah_s_theme_Lullaby, 0, 1);
        // Exit the switch statement
        break;
    }
	
 default: {
        // Stop the hallway sound when entering a room that is not classroom
        audio_stop_sound(Noah_s_theme_Lullaby);
    } break;
}

//ATTIC ROOM LEVEL MUSIC
switch (room) {
    case room_puzzle1: {
        // Stop the sound for other rooms
        audio_stop_sound(unown_ambienceNEW_HALLWAY_LOOPED);
        // Start playing the art room music
        audio_play_sound(Attic_Ambience_FINAL_MIX_INGAME, 0, 1);
        // Exit the switch statement
	} break;
}