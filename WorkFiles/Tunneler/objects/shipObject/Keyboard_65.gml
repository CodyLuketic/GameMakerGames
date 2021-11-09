/// @description Insert description here
// You can write your code in this editor

if(global.leftEngineFuel > 0)
{
	hspeed -= hSpeedMultiplier;
	global.leftEngineFuel--;
	
	spawnParticlesRight();
	
	audio_play_sound(mainThrusterSound, 1, false); 
}
else
{
	audio_play_sound(outOfFuelSound, 1, false); 
}