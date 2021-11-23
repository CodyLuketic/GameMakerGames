/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(ord("W")) || gamepad_axis_value(0, gp_axislv) < 0)
{
	physics_apply_force(x, y, 0, -playerSpeed);
}

if(keyboard_check(ord("A")) || gamepad_axis_value(0, gp_axislh) < 0)
{
	physics_apply_force(x, y, -playerSpeed, 0);
}

if(keyboard_check(ord("S")) || gamepad_axis_value(0, gp_axislv) > 0)
{
	physics_apply_force(x, y, 0, playerSpeed);
}

if(keyboard_check(ord("D")) || gamepad_axis_value(0, gp_axislh) > 0)
{
	physics_apply_force(x, y, playerSpeed, 0);
}

if(phy_position_x < 0 - sprite_width)
{
	phy_position_x = room_width + sprite_width;
}

if(phy_position_x > room_width + sprite_width)
{
	phy_position_x = 0 - sprite_width;
}

if(phy_position_y < 0 - sprite_height)
{
	phy_position_y = room_height + sprite_height;
}

if(phy_position_y > room_height + sprite_height)
{
	phy_position_y = 0 - sprite_height;
}