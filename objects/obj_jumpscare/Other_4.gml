/// @description Insert description here
// You can write your code in this editor
switch (room) {
    case room_jumpscare: {
        // Stop the sound for other rooms
        audio_stop_sound(unown_ambienceNEW_HALLWAY_LOOPED);
		
		//stop the monster lullaby sound
		audio_stop_sound(sfx_Attic_mimic_sound);
		
		//stop the attic
		audio_stop_sound(Attic_Ambience_FINAL_MIX_INGAME);
		
		audio_stop_sound(The_Art_Room__FINAL_MIX_INGAME_VERSION_);
		
		audio_stop_sound(CHASE_SOUND_HALLWAY);
		
		audio_stop_sound(Ventilation_ambience__Ingame_Version_);
		


    } break;
}







