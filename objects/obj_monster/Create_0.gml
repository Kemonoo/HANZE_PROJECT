zzzzzspeed = 0;
move_towards_player = false;

// Create event of obj_monster
audio_emitter = audio_emitter_create();
audio_emitter_position(audio_emitter, x, y, 0);
audio_emitter_velocity(audio_emitter, 0, 0, 0); // Set velocity if needed
audio_emitter_gain(audio_emitter, 1.0); // Set volume (0.0 to 1.0)
