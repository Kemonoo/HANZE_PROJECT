


//var angle_to_player = point_direction(x, y, obj_man.x, obj_man.y);


//var freeze_angle_range = 360; 


//if (abs(angle_difference(obj_man.direction, angle_to_player)) < freeze_angle_range) {
   // speed = 0;
	
   // speed = 0;
//}


//move_towards_point(obj_man.x, obj_man.y, speed);


// Step Event for obj_enemy
// Step Event for obj_enemy
// Step Event for obj_enemy
var follow_distance = 300; // Adjust the distance at which enemies start following

if (point_distance(x, y, obj_man.x, obj_man.y) < follow_distance) {
     //Move towards the player
	move_towards_point(obj_man.x, obj_man.y, sp); // Adjust the speed as needed
} else {
    //If not close enough, you can add other behaviors or just stop moving
	sp = irandom_range(min_speed, max_speed);
}
