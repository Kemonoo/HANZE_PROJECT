
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
			sprite_index = spr_Player_walk___right;
			dir = 0;
		}
		if (vx < 0)
		{
			sprite_index = spr_Player_walk___Left;
			dir = 2;
		}
		if (vy > 0) 
		{
			sprite_index = spr_Player_walk___Down;
			dir = 3;
		}
		if (vy < 0) 
		{
			sprite_index = spr_Player_walk___Up;
			dir = 1;
		}
	}
}
 
if !inside_object
{
	if (keyboard_check_pressed(vk_space)) {
	    if (!is_dashing) {
        
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

        
	        x += dash_x;
	        y += dash_y;

	        is_dashing = true; 
	        image_speed = 2; 
	        image_index = 0; 
	        alarm[0] = dash_duration; 
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





if (instance_exists(obj_monster)) {
    if (place_meeting(x, y, obj_collsionblock1)) {
        obj_monster.move_towards_player = true;
    } else {
        obj_monster.move_towards_player = false;
    }
    
 
}

	



    if (place_meeting(x, y, obj_item_shoes)) {
		player_speed = 6;
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







