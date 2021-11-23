/// @description Insert description here
// You can write your code in this editor

if (distance_to_object(playerObject) <= room_width) {
	phy_position_x += sign(playerObject.x - x) * moveSpeedMultiplier;
	phy_position_y += sign(playerObject.y - y) * moveSpeedMultiplier;
}