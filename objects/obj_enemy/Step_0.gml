
var follow_distance = 320; 



if (point_distance(x, y, obj_man.x, obj_man.y) < follow_distance) {
  
	move_towards_point(obj_man.x, obj_man.y, sp); 
} else {
    
	sp = irandom_range(min_speed, max_speed);
}





if (speed == 0){
	sprite_index = spr_follow_bones;
} else if (direction > 90 && direction < 270) {
    sprite_index = spr_bones_right;
} else if (direction <= 90 || direction >= 270) {
    sprite_index = spr_bones_left;
} 





