// Script: scr_inventory_add_item

/// scr_inventory_add_item(inventory, item_id)
/// Adds an item to the player's inventory.

var inventory = argument0;
var item_id = argument1;

// Check if the item_id is a valid number
if (!is_real(item_id)) {
    show_debug_message("Error: Invalid item_id - " + string(item_id));
    return;
}

// Check if the item is already in the inventory
var item_index = ds_list_find_index(inventory, item_id);

if (item_index == -1) {
    // If the item is not in the inventory, add it
    ds_list_add(inventory, item_id);
    show_debug_message("Item added to inventory: " + string(item_id));
}
