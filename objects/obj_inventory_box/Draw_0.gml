// Draw the first gray box
draw_sprite(grayBoxSprite, 0, obj_Noah.x + 360, obj_Noah.y - 380);

// Draw the second gray box
draw_sprite(grayBoxSprite, 0, obj_Noah.x + 220, obj_Noah.y - 380);

// Draw the third gray box
draw_sprite(grayBoxSprite, 0, obj_Noah.x + 80, obj_Noah.y - 380);



   if (inst_man.has_nails) {
	   draw_sprite(spr_nails, 0, obj_Noah.x + 90, obj_Noah.y - 380);
	   
   }
   
   if (inst_man.has_shoes) {
	   draw_sprite(spr_item_shoes, 0, obj_Noah.x + 230, obj_Noah.y - 380);
	   
   }
   
   if (inst_man.has_jacket) {
	   draw_sprite(spr_COAT_FINIT, 0, obj_Noah.x + 375, obj_Noah.y - 370);
	   
   }
   
   
   
   