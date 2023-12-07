var spr_man_idle = spr_man_idle1; 
var spr_man_walk = spr_man_walking; 
var spr_man_dash = spr_man_dashing; 




if (!is_dashing) {
    
  
    if (keyboard_check(ord("W"))) {
        y -= move_speed;
        sprite_index = spr_man_walk; 
    }
    if (keyboard_check(ord("A"))) {
        x -= move_speed;
        sprite_index = spr_man_walk; 
        image_xscale = -1; 
    }
    if (keyboard_check(ord("S"))) {
        y += move_speed;
        sprite_index = spr_man_walk; 
    }
    if (keyboard_check(ord("D"))) {
        x += move_speed;
        sprite_index = spr_man_walk; 
        image_xscale = 1; 
    }

   
    if (!keyboard_check(ord("W")) && !keyboard_check(ord("A")) && !keyboard_check(ord("S")) && !keyboard_check(ord("D"))) {
        sprite_index = spr_man_idle; 
    }
}


if (keyboard_check_pressed(vk_space)) {
    if (!is_dashing) {
        
        var dash_speed = 300; 
        var dash_duration = 10; 

      
        var dash_direction = 0; 
        if (keyboard_check(ord("W"))) dash_direction = 90; // Up
        if (keyboard_check(ord("A"))) dash_direction = 180; // Left
        if (keyboard_check(ord("S"))) dash_direction = 270; // Down
        if (keyboard_check(ord("D"))) dash_direction = 0; // Right

      
        var dash_x = lengthdir_x(dash_speed, dash_direction);
        var dash_y = lengthdir_y(dash_speed, dash_direction);

        
        x += dash_x;
        y += dash_y;

        is_dashing = true; 
        sprite_index = spr_man_dash; 
        image_speed = 2; 
        image_index = 0; 
        alarm[0] = dash_duration; 
    }
}


if (alarm[0] > 0) {
    alarm[0] -= 1;
} else if (is_dashing) {

    is_dashing = false;
    sprite_index = spr_man_idle; 
    image_speed = 1; 
}



if (instance_exists(obj_monster)) {
    if (place_meeting(x, y, obj_collsionblock1)) {
        obj_monster.move_towards_player = true;
    } else {
        obj_monster.move_towards_player = false;
    }
    
 
}

    
 




if (place_meeting(x, y, obj_bedroom) && keyboard_check_pressed(ord("E"))) {
    room_goto(room_bedroom); 
}

if (place_meeting(x, y, obj_classroom1) && keyboard_check_pressed(ord("E"))) {
	hallwayx = x;
	hallway = y;
    room_goto(room_class1); 
}
if (place_meeting(x, y, obj_classroom2) && keyboard_check_pressed(ord("E"))) {
    room_goto(room_class2); 
}
if (place_meeting(x, y, obj_classroom3) && keyboard_check_pressed(ord("E"))) {
    room_goto(room_class3); 
}
if (place_meeting(x, y, obj_hallwaydoor) && keyboard_check_pressed(ord("E"))) {
    x = hallwayx;
	y = hallway;
	room_goto(room_hallway); 
	
	
}


if (place_meeting(x, y, obj_bedroom) && keyboard_check_pressed(ord("E"))) {
    room_goto(room_bedroom); 
}

if (place_meeting(x, y, obj_puzzle1) && keyboard_check_pressed(ord("E"))) {
	hallwayx = x;
	hallway = y;
    room_goto(room_puzzle1); 
}
if (place_meeting(x, y, obj_puzzle2) && keyboard_check_pressed(ord("E"))) {
    room_goto(room_puzzle2); 
}
if (place_meeting(x, y, obj_puzzle3) && keyboard_check_pressed(ord("E"))) {
    room_goto(room_puzzle3); 
}











