/// @description Insert description here
// You can write your code in this editor

if(global.mainEngineFuel > 0)
{
	vspeed -= vSpeedMultiplier;
	global.mainEngineFuel--;
	
	spawnParticlesDown();
	
	audio_play_sound(mainThrusterSound, 1, false); 
}
else
{
	audio_play_sound(outOfFuelSound, 1, false); 
}