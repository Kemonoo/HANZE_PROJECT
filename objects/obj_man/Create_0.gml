// Create Event
image_angle = 0; 
direction = 0;   
is_dashing = false; 

depth -= .5;


alarm[0] = -1; 
//move_speed = 3; 

hallwayx = 7326
hallway = 1315

// variables for movement and sprite change
player_speed = 3
vx = 0;
vy = 0;
dir = 3;
move_right = 0;
move_left = 0;
move_up = 0;
move_down = 0;

// state variables
inside_object = false	// when inside obj_locker this is set to true

// create listener and set orientation
audio_listener_set_position(0,x,y,0);
audio_listener_set_orientation(0,0,1,0,0,0,1);