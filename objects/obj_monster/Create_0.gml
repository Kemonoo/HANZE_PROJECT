speed = 0;
move_towards_player = false;

audio_emitter = audio_emitter_create();
audio_play_sound_on(audio_emitter, sfx_Attic_mimic_sound, true, 1)
audio_emitter_velocity(audio_emitter, 0, 0, 0); // Set velocity if needed
audio_falloff_set_model(audio_falloff_exponent_distance_clamped);
audio_emitter_falloff(audio_emitter, 500, 2000, 1);
