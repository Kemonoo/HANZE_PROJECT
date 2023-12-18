/// @description creepy monster sound playing

switch (room) {
	case room_puzzle1: {
		audio_stop_sound(hallway_placeholder); //so the hallway sound doens't play in the sound maze room as well
		audio_play_sound(monster_lullaby,1,1); 
	} break;	
};

