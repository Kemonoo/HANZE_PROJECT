confirm_key = vk_enter


margin = 16;
padding = 8;
width = display_get_gui_width() - margin * 2;
height = sprite_height;


x = (display_get_gui_width() - width) / 2;
y = display_get_gui_height() - height - margin;


text_font = fnt_text;
text_color = c_white;
text_speed = 0.6;
text_x = padding;
text_y = padding;
text_width = width - padding * 2;

portrait_x = padding;
portrait_y = padding;


speaker_x = padding;
speaker_y = 0;
speaker_font = fnt_name;
speaker_color = #464633;


// do not chnage Vars
actions = [];
current_action = - 1;

text = "";
text_progress = 0;
text_length = 0;

portrait_sprite = -1;
portrait_width = sprite_get_width(spr_portrait);
portrait_height = sprite_get_height(spr_portrait);
portrait_side = PORTRAIT_SIDE.LEFT;

enum PORTRAIT_SIDE {
	LEFT,
	RIGHT
}

speaker_name = "";
speaker_width = sprite_get_width(spr_name_box);
speaker_height = sprite_get_height(spr_name_box);




setTopic = function(topic) {
	actions = global.topics[$ topic];
	current_action = -1;
	
	next();
}


next = function() {
	current_action++;
	if (current_action >= array_length(actions)) {
		instance_destroy();
	}
	else{
		actions[current_action].act(id);
	}
}


setText = function(newText) {
	text = newText;
	text_length = string_length(newText);
	text_progress = 0;
}




