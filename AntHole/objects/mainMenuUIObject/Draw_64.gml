/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_colour(c_red);
draw_set_font(titleFont);

draw_text(room_width / 2, room_height / 4, "AntHole");

draw_set_halign(fa_left);
draw_set_colour(c_green);
draw_set_font(mainMenuFont);

draw_text(room_width / 2.5, room_height / 2.1, "W: Move Up");
draw_text(room_width / 2.5, room_height / 1.8, "A: Move Left");
draw_text(room_width / 2.5, room_height / 1.59, "S: Move Down");
draw_text(room_width / 2.5, room_height / 1.41, "D: Move Right");

draw_set_halign(fa_center);
draw_text(room_width / 2, room_height / 1.2, "Enter: To Start!");