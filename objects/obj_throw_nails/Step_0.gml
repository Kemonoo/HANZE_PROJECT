


x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);


image_angle = direction;


if (place_meeting(x, y, obj_wall)) {
    
    instance_destroy();
	audio_play_sound(nail_hit_final, 1, false)
} else {
  
    x += lengthdir_x(normal_speed, direction);
    y += lengthdir_y(normal_speed, direction);
    
 
    var collision_obj = instance_place(x, y, obj_enemy); 
    
    if (collision_obj != noone) {
       
        var knockback_direction = point_direction(collision_obj.x, collision_obj.y, x, y);
        collision_obj.x += lengthdir_x(knockback_distance, knockback_direction);
        collision_obj.y += lengthdir_y(knockback_distance, knockback_direction);
		audio_play_sound(nail_hit_final, 1 , false)
        
       
        if (variable_instance_exists(collision_obj, "sp")) {
           
            collision_obj.sp -= collision_slowdown;
        }
        
       
        collision_timer = collision_duration;
    }
    
    
    if (collision_timer > 0) {
        collision_timer -= 1;
    } else {
        
        if (collision_obj != noone && variable_instance_exists(collision_obj, "sp")) {
            collision_obj.sp = normal_speed;
        }
        
   
        speed = normal_speed;
    }
}




 
    var collision_obj = instance_place(x, y, obj_sound_monster); 
    
    if (collision_obj != noone) {
       
        var knockback_direction = point_direction(collision_obj.x, collision_obj.y, x, y);
        collision_obj.x += lengthdir_x(knockback_distance, knockback_direction);
        collision_obj.y += lengthdir_y(knockback_distance, knockback_direction);
		audio_play_sound(nail_hit_final, 1 , false)
        
       
        if (variable_instance_exists(collision_obj, "sp")) {
           
            collision_obj.sp -= collision_slowdown;
        }
        
       
        collision_timer = collision_duration;
    }
    
    
    if (collision_timer > 0) {
        collision_timer -= 1;
    } else {
        
        if (collision_obj != noone && variable_instance_exists(collision_obj, "sp")) {
            collision_obj.sp = normal_speed;
        }
        
   
        speed = normal_speed;
    }



    var collision_obj = instance_place(x, y, obj_hallway_monster); 
    
    if (collision_obj != noone) {
       
        var knockback_direction = point_direction(collision_obj.x, collision_obj.y, x, y);
        collision_obj.x += lengthdir_x(knockback_distance, knockback_direction);
        collision_obj.y += lengthdir_y(knockback_distance, knockback_direction);
		audio_play_sound(nail_hit_final, 1 , false)
        
       
        if (variable_instance_exists(collision_obj, "sp")) {
           
            collision_obj.sp -= collision_slowdown;
        }
        
       
        collision_timer = collision_duration;
    }
    
    
    if (collision_timer > 0) {
        collision_timer -= 1;
    } else {
        
        if (collision_obj != noone && variable_instance_exists(collision_obj, "sp")) {
            collision_obj.sp = normal_speed;
        }
        
   
        speed = normal_speed;
    }


