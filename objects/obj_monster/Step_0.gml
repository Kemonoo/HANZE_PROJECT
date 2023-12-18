//makes monster go to player

if (move_towards_player) {
	speed = 30;
	
	move_towards_point(obj_man.x, obj_man.y, speed)

    
	} else {
        speed = 0;
    }

audio_emitter_position(audio_emitter, x, y, 0);