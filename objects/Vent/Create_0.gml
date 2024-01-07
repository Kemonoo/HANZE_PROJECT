/// Play vent sound in 3D
audio_emitter = audio_emitter_create();
audio_play_sound_on(audio_emitter, Ventilation_ambience__Ingame_Version_, true, 1)
audio_emitter_velocity(audio_emitter, 0, 0, 0); // Set velocity if needed
audio_falloff_set_model(audio_falloff_exponent_distance_clamped);
audio_emitter_falloff(audio_emitter, 500, 500, 10);
