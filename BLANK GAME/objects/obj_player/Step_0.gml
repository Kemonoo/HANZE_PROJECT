right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);

// get change of x and y
x_change = (right_key - left_key) * move_speed
y_change = (down_key - up_key) * move_speed

// move player
x += x_change;
y += y_change;	

// set sprite
if x_change > 0 {face = RIGHT};
if x_change < 0 {face = LEFT};
if y_change > 0 {face = DOWN};
if y_change < 0 {face = UP};

sprite_index = sprite[face]