
depth -= 101;


if (!instance_exists(obj_inventory_box)) {
    instance_create_layer(0, 0, "Instances", obj_inventory_box);


}

// Initialize variables
grayBoxSprite = spr_inventory_box; 

// Set the positions for the gray boxes
box1_x = 10;
box1_y = 10;

box2_x = 10 + 2 * (sprite_width + 70); 
box2_y = 10;

box3_x = 10 + 2 * (sprite_width + 140); 
box3_y = 10;






