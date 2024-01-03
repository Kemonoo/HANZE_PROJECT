draw_self();

draw_set_font(fnt_press);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
var death_count = string(global.death_count);
draw_text(650,190,"Deaths:" + death_count);
