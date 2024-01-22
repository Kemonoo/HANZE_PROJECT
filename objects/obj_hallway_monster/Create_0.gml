

follow_distance = 320; 

speed = 0;
move_towards_player = false;

path_start(Path1, 4, path_action_restart, false);

old_x = x;
old_y = y;

audio_emitter = audio_emitter_create();
audio_play_sound_on(audio_emitter, Hallcrawler_INGAME_LOOP, true, 1)
audio_emitter_velocity(audio_emitter, 0, 0, 0); // Set velocity if needed
audio_falloff_set_model(audio_falloff_exponent_distance);
audio_emitter_falloff(audio_emitter, 1000, 300, 1);

