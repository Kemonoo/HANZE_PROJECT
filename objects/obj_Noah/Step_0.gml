
if (!is_dashing and !inside_object) {
	// check if keys pressed
	move_right = keyboard_check(ord("D"));
	move_left = keyboard_check(ord("A"));
	move_up = keyboard_check(ord("W"));
	move_down = keyboard_check(ord("S"));

	// calculate movemnt
	vx = ((move_right - move_left) * player_speed);
	vy = ((move_down - move_up) * player_speed);



	// set idle sprite
	if (vx == 0 && vy == 0)
	{
		switch dir
		{
			case 0: sprite_index = spr_Player_idle___right; break;
			case 1: sprite_index = spr_Player_idle___up; break;
			case 2: sprite_index = spr_Player_idle___left; break;
			case 3: sprite_index = spr_Player_idle___down; break;
		}
	}


	if ((vx != 0 || vy != 0) && not inside_object)
	{
		x += vx;
		y += vy;
	
		//change sprite based on direction
		if (vx > 0) 
		{
			sprite_index = Player_walk___right;
			dir = 0;
		}
		if (vx < 0)
		{
			sprite_index = Player_walk___Left;
			dir = 2;
		}
		if (vy > 0) 
		{
			sprite_index = Player_walk__down;
			dir = 3;
		}
		if (vy < 0) 
		{
			sprite_index = Player_walk___Up;
			dir = 1;
		}
	}
}



 
if !inside_object
{
	if (keyboard_check_pressed(vk_space)) {
	    if (!is_dashing) {
			if(num_dash<1) {
        
	        var dash_speed = 150; 
	        var dash_duration = 10; 

      
	        var dash_direction = 0; 
		
			// switch is like if statement for each case of dir. {case 0:} is equivalent to {if dir == 0:}
			switch dir
			{
				// replace spr_player_idle_(direction) with sprite for dashing in that direction
				case 0: dash_direction = 0; sprite_index = spr_Player_dash_right; break;	
				case 1: dash_direction = 90;  sprite_index = spr_Player_dash_up; break;
				case 2: dash_direction = 180;  sprite_index = spr_Player_dash_left; break;
				case 3: dash_direction = 270;  sprite_index = spr_Player_dash_down; break;
			}

	        var dash_x = lengthdir_x(dash_speed, dash_direction);
	        var dash_y = lengthdir_y(dash_speed, dash_direction);
			instance_create_layer(obj_Noah.x - 450, obj_Noah.y - 330, "Instances", obj_dash_cooldown);
			
				x += dash_x;
				y += dash_y;

				is_dashing = true; 
				image_speed = 2; 
				image_index = 0; 
				alarm[0] = dash_duration;
				num_dash++;
				alarm[2] = 100; //set to 100 for demo 
			}
				
	    }
	}
}


if (alarm[0] > 0) {
    alarm[0] -= 1;
} else if (is_dashing) {
    is_dashing = false;
    image_speed = 1; 
}


if (instance_exists(obj_vision)) {




switch dir
			{
				
					case 0: {
					obj_vision.x = x; 
					obj_vision.y = y;
					obj_vision.image_angle = 360;
					break;
				}
					case 1: {
					obj_vision.x = x; 
					obj_vision.y = y;
					obj_vision.image_angle = 90;
					break;
				}

					
					case 2:{
					obj_vision.x = x; 
					obj_vision.y = y;
					obj_vision.image_angle = 180 ;
					break;
				}
					case 3: {
					obj_vision.x = x; 
					obj_vision.y = y;
					obj_vision.image_angle = 270;
					break;
				}
				
			}
			
}





// Assuming obj_sound_monster has a variable move_towards_player
// and water_step1, water_step2, water_step3, water_step4 are the sound assets

if (instance_exists(obj_sound_monster)) {
    if (place_meeting(x, y, obj_collsionblock1)) {
        obj_sound_monster.move_towards_player = true;
        
	}else {
        obj_sound_monster.move_towards_player = false;
        
    }
}



	

		


	
	
    
	//move audio listener with me
audio_listener_set_position(0,x,y,0);
	
 //doors
if (place_meeting(x, y, obj_bedroom) && keyboard_check_pressed(ord("E"))) {
    room_goto(room_bedroom); 
	hallwayx = x;
	hallway = y;
}
if (place_meeting(x, y, obj_classroom1) && keyboard_check_pressed(ord("E"))) {
	hallwayx = x;
	hallway = y;
    room_goto(room_class1); 
}
if (place_meeting(x, y, obj_classroom2) && keyboard_check_pressed(ord("E"))) {
    hallwayx = x;
	hallway = y;
	room_goto(room_class2); 
}
if (place_meeting(x, y, obj_classroom3) && keyboard_check_pressed(ord("E"))) {
    hallwayx = x;
	hallway = y;
	room_goto(room_class3); 
}
if (place_meeting(x, y, obj_hallwaydoor) && keyboard_check_pressed(ord("E"))) {
    x = hallwayx;
	y = hallway;
	room_goto(room_hallway); 
}
if (place_meeting(x, y, obj_bedroom) && keyboard_check_pressed(ord("E"))) {
    hallwayx = x;
	hallway = y;
	room_goto(room_bedroom); 
}

if (place_meeting(x, y, obj_puzzle1) && keyboard_check_pressed(ord("E"))) {
	hallwayx = x;
	hallway = y;
    room_goto(room_puzzle1); 
}
if (place_meeting(x, y, obj_puzzle2) && keyboard_check_pressed(ord("E"))) {
    hallwayx = x;
	hallway = y;
	room_goto(room_puzzle2); 
}
if (place_meeting(x, y, obj_puzzle3) && keyboard_check_pressed(ord("E"))) {
    hallwayx = x;
	hallway = y;
   room_goto(room_puzzle3); 
}


//ending good room

if (place_meeting(x, y, obj_endingdoor) && keyboard_check_pressed(ord("E")) && kept_jacket && kept_nails && kept_shoes) {
    
    room_goto(room_ending_bad);
}

if (place_meeting(x, y, obj_endingdoor) && keyboard_check_pressed(ord("E")) && gave_jacket && gave_nails && gave_shoes) {
    
    room_goto(room_ending_good);
}


    
 





