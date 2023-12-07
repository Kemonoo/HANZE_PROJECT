/// @description movement


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
		case 0: sprite_index = spr_player_idle_right; break;
		case 1: sprite_index = spr_player_idle_up; break;
		case 2: sprite_index = spr_player_idle_left; break;
		case 3: sprite_index = spr_player_idle_down; break;
	}
}


if ((vx != 0 || vy != 0) && not inside_object)
{
	x += vx;
	y += vy;
	
	//change sprite based on direction
	if (vx > 0) 
	{
		sprite_index = spr_player_walking_right;
		dir = 0;
	}
	if (vx < 0)
	{
		sprite_index = spr_player_walking_left;
		dir = 2;
	}
	if (vy > 0) 
	{
		sprite_index = spr_player_walking_down;
		dir = 3;
	}
	if (vy < 0) 
	{
		sprite_index = spr_player_walking_up;
		dir = 1;
	}
}



if keyboard_check_pressed(ord("L"))
{
	instance_create_layer(x, y, "Instances", obj_bullet, 
		{
			direction : 0
		});
}
if keyboard_check_pressed(ord("I"))
{
	instance_create_layer(x, y, "Instances", obj_bullet, 
		{
			direction : 90
		});
}
if keyboard_check_pressed(ord("J"))
{
	instance_create_layer(x, y, "Instances", obj_bullet, 
		{
			direction : 180
		});
}
if keyboard_check_pressed(ord("K"))

{
	instance_create_layer(x, y, "Instances", obj_bullet, 
		{
			direction : 270
		});
}
