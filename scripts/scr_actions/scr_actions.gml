#macro TEXT new TextAction
#macro SPEAKER new SpeakerAction
#macro CHOICE new ChoiceAction
#macro OPTION new OptionAction
#macro GOTO new GotoAction


// to unlock exit once you give items back 
#macro GIVE_NAILS_BACK new GiveNailsBackAction
#macro GIVE_SHOES_BACK new GiveShoesBackAction
#macro GIVE_JACKET_BACK new GiveJacketBackAction


// to unlock exit if player keeps all items 
#macro KEEP_NAILS new KeepNailsBackAction
#macro KEEP_SHOES new KeepShoesBackAction
#macro KEEP_JACKET new KeepJacketBackAction


// to let new task pop up
#macro TALK_JERK new TalkedJerkBackAction
#macro TALK_OLDMAN new TalkedOldmanBackAction
#macro TALK_TEACHER new TalkedTeacherBackAction



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
			inst_man.gave_nails = true;
        }
		
		 if (instance_exists(obj_throw_nails)) {
            instance_destroy(obj_throw_nails);
        }
		
    }
}




function GiveShoesBackAction() : DialogueAction() constructor {
    act = function(textbox) {
		
		 if (instance_exists(obj_Noah)) {
            obj_Noah.player_speed = 3;
			inst_man.has_shoes = false;
			inst_man.gave_shoes = true;
        }
    }
}


function GiveJacketBackAction() : DialogueAction() constructor {
    act = function(textbox) {
		
		 if (instance_exists(obj_Noah)) {
            
			inst_man.has_jacket = false;
			inst_man.gave_jacket = true;
        }
    }
}



function KeepNailsBackAction() : DialogueAction() constructor {
    act = function(textbox) {
        // Destroy the obj_nail instance
        if (instance_exists(obj_nails)) {
			
			inst_man.kept_nails = true;
        }
    }
}




function KeepShoesBackAction() : DialogueAction() constructor {
    act = function(textbox) {
		
		 if (instance_exists(obj_Noah)) {
            
			inst_man.kept_shoes = true;
        }
    }
}


function KeepJacketBackAction() : DialogueAction() constructor {
    act = function(textbox) {
		
		 if (instance_exists(obj_Noah)) {
            
			inst_man.kept_jacket = true;
        }
    }
}



function TalkedJerkBackAction() : DialogueAction() constructor {
    act = function(textbox) {
		
		 if (instance_exists(obj_Noah)) {
            
			inst_man.talked_npc1 = true;
        }
    }
}

function TalkedOldmanBackAction() : DialogueAction() constructor {
    act = function(textbox) {
		
		 if (instance_exists(obj_Noah)) {
            
			inst_man.talked_npc2 = true;
        }
    }
}



function TalkedTeacherBackAction() : DialogueAction() constructor {
    act = function(textbox) {
		
		 if (instance_exists(obj_Noah)) {
            
			inst_man.talked_npc3 = true;
        }
    }
}








