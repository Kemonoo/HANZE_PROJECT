if (!global.achievement_first_night) {
	if (instance_exists(obj_man)){
		if (room == room_bedroom){
			if (obj_man == room == room_hallway){
			global.achievement_first_night = true;
			show_message("You started your first night!");
			}
		}
	}
}