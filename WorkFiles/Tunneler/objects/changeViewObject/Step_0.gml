/// @description Insert description here
// You can write your code in this editor

timer++

if(timer == time)
{
	//Basic set up
	camera_set_view_size(view_camera[1], 256, 256);
	
	//Setting up object target information
	camera_set_view_target(view_camera[1], shipObject);
	camera_set_view_speed(view_camera[1], -1, -1);
	camera_set_view_border(view_camera[1], 32, 32);
	
	view_set_visible(0, false);
	view_set_visible(1, true);
}
if(timer > time)
{
	camera_set_view_pos(view_camera[1], shipObject.x - offset, shipObject.y);
}