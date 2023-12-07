//get inputs
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_enter);

//store number of options in current menu
op_length = array_length(option[menu_level]);

//move in the menu
pos += down_key - up_key;
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length-1};

//using the options
if accept_key{
	
	var _sml = menu_level;
	
	switch(menu_level){
	
		//pauze menu
		case 0:
			switch(pos){
				//start game
				case 0: room_goto_next(); break;		
				//settings
				case 1:	menu_level = 1; break;
				//quit
				case 2:	game_end();	break;
				}
		break;
	
		//settings
		case 1:
			switch (pos){
				//window size
				case 0:
				
					break;
				//brightness
				case 1:
				
					break;
				//controls
				case 2:
				
					break;
				//back
				case 3:
					menu_level = 0;
					break;
			}
			break;
	
		}
	
	//set postion back
	if _sml != menu_level {pos = 0};

	//correct option lenght
	op_length = array_length(option[menu_level]);
	}

