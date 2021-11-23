/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_colour(c_red);
draw_set_font(lostFont);

draw_text(room_width / 2, room_height / 4, "You Lost!");
draw_text(room_width / 2, room_height / 1.9, "Press Enter");
draw_text(room_width / 2, room_height / 1.5, "To Retry");