#macro TEXT new TextAction
#macro SPEAKER new SpeakerAction
#macro CHOICE new ChoiceAction
#macro OPTION new OptionAction
#macro GOTO new GotoAction

#macro GIVE_NAILS_BACK new GiveNailsBackAction
#macro GIVE_SHOES_BACK new GiveShoesBackAction
#macro GIVE_JACKET_BACK new GiveJacketBackAction



function DialogueAction() constructor {
	act = function() { };
}

function TextAction(_text) : DialogueAction() constructor {
	text = _text;
	
	act = function(textbox) {
		textbox.setText(text);
	}
}

//set speaker and speaker side
function SpeakerAction(_name, _sprite = undefined, _side = undefined): DialogueAction() constructor{
	name = _name;
	sprite = _sprite;
	side = _side;
	
	act = function(textbox) {
		textbox.speaker_name = name;
		
		if (!is_undefined(sprite))
			textbox.portrait_sprite = sprite;
			
		if (!is_undefined(side))
			textbox.portrait_side = side;
			
			
		textbox.next();
	}
}

//define branch dialog
function ChoiceAction(_text) : DialogueAction() constructor {
	text = _text;
	
	options = [];
	for (var i = 1; i < argument_count; i++)
		array_push(options, argument[i]);
		
	act = function(textbox) {
		textbox.setText(text);
		textbox.options = options;
		textbox.option_count = array_length(options);
		textbox.current_option = 0;
	}
}

//place options within cjoiceaction
function OptionAction(_text, _topic): DialogueAction() constructor {
	text = _text;
	topic = _topic;
	
	act = function(textbox) {
		textbox.setTopic(topic);
	}
}

function GotoAction(_topic): DialogueAction() constructor {
	topic = _topic;
	
	act = function(textbox) {
		textbox.setTopic(topic);
	}
}



function GiveNailsBackAction() : DialogueAction() constructor {
    act = function(textbox) {
        // Destroy the obj_nail instance
        if (instance_exists(obj_nails)) {
            instance_destroy(obj_nails);
			inst_man.has_nails = false;
        }
		
		 if (instance_exists(obj_throw_nails)) {
            instance_destroy(obj_throw_nails);
        }
		

        // Optionally, you can perform additional actions here
    }
}




function GiveShoesBackAction() : DialogueAction() constructor {
    act = function(textbox) {
		
		 if (instance_exists(obj_man)) {
            obj_man.player_speed = 3;
			inst_man.has_shoes = false;
        }
    }
}


function GiveJacketBackAction() : DialogueAction() constructor {
    act = function(textbox) {
		
		 if (instance_exists(obj_man)) {
            
			inst_man.has_jacket = false;
        }
    }
}





