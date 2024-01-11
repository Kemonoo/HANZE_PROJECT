// Draw the first gray box
draw_sprite(grayBoxSprite, 0, obj_man.x + 380, obj_man.y - 380);

// Draw the second gray box
draw_sprite(grayBoxSprite, 0, obj_man.x + 240, obj_man.y - 380);

// Draw the third gray box
draw_sprite(grayBoxSprite, 0, obj_man.x + 100, obj_man.y - 380);



   if (inst_man.has_nails) {
	   draw_sprite(spr_nails, 0, obj_man.x + 100, obj_man.y - 380);
	   
   }
   
   if (inst_man.has_shoes) {
	   draw_sprite(spr_item_shoe, 0, obj_man.x + 240, obj_man.y - 380);
	   
   }
   
   