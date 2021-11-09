/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_set_colour(make_color_rgb(255, 255, 255));
draw_set_font(techGameFont);

draw_text(5, 10, "Main Engine Fuel: SPACE");
draw_text(5, 30, global.mainEngineFuel);

draw_text(5, 60, "Left Engine Fuel: A");
draw_text(5, 80, global.leftEngineFuel);

draw_text(5, 110, "Right Engine Fuel: D");
draw_text(5, 130, global.rightEngineFuel);


draw_set_halign(fa_right);

draw_text(1019, 10, "Ship X Position");
draw_text(1019, 30, shipObject.x);

draw_text(1019, 60, "Ship Y Position");
draw_text(1019, 80, shipObject.y);

draw_text(1019, 110, "Ship Vertical Speed");
draw_text(1019, 130, global.rightEngineFuel);

draw_text(1019, 160, "Ship Horizontal Speed");
draw_text(1019, 180, global.rightEngineFuel);