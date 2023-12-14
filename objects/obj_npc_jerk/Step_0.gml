
if instance_exists(obj_man) {
    player = instance_nearest(x, y, obj_man);

    if (player != noone && distance_to_object(player) < radius) {
        if (keyboard_check_pressed(ord("E"))) {
           startDialogue("Example")
        }
    }
} 





