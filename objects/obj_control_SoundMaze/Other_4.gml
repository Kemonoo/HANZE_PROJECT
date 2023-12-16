/// @description creepy monster sound playing

switch (room) {
	case room_puzzle1: {
		audio_stop_sound(hallway_placeholder);
		audio_play_sound(monster_lullaby,1,1);
	} break;
	
};
