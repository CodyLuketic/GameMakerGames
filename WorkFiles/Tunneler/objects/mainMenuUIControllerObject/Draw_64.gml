/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_colour(make_color_rgb(255, 255, 255));
draw_set_font(titleFont);

draw_text(room_width / 2, room_height / 4, "TUNNELER");

draw_set_font(mainMenuFont);

draw_text(room_width / 2, room_height / 2, "SPACE: Up Against Gravity!");
draw_text(room_width / 2, room_height / 1.7, "A: Move Ship Left!");
draw_text(room_width / 2, room_height / 1.5, "D: Move Ship Right!");
draw_text(room_width / 2, room_height / 1.2, "Enter: To Start!");