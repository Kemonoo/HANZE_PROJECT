// Create Event
image_angle = 0; 
direction = 0;   

//dash cooldown
is_dashing = false;
num_dash = 0;

//jacket
shield_active = false;
shield_cooldown = false;


// Create Event of obj_player
//initial_hue = ; // Set to the desired initial hue value




depth -= 101;
alarm[0] = -1; 

//hallway spawn point when u leave bed room
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
inventory = ds_list_create();


// create listener and set orientation
audio_listener_set_position(0,x,y,0);
audio_listener_set_orientation(0,0,1,0,0,0,1);


