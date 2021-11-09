/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x, y, blockObject) || place_meeting(x, y, circleObject) || place_meeting(x, y, triangleObject))
{
	room_goto(lostRoom);
}

if(vspeed < 0)
{
	vspeed += vSpeedMultiplier / 1.5;
}
else
{
	vspeed += vSpeedMultiplier / 3;
}

if(hspeed < 0)
{
	hspeed += hSpeedMultiplier / 1.5;
}
else if(hspeed > 0)
{
	hspeed -= hSpeedMultiplier / 3;
}

if(place_meeting(x, y, landingBlockObject) && vspeed <= 100)
{
	view_set_visible(1, false);
	view_set_visible(0, true);
	
	if(vspeed <= 0.5)
	{
		room_goto(wonRoom);
	}
	else
	{
		room_goto(lostRoom);
	}
}