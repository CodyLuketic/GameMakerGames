/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_colour(make_color_rgb(255, 255, 255));
draw_set_font(wonAndLostFont);

draw_text(room_width / 2, room_height / 4, "You Lost!");
draw_text(room_width / 2, room_height / 2.3, "Press Enter");
draw_text(room_width / 2, room_height / 2, "To Retry");