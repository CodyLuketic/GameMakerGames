// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function moveParticlesDown()
{
	speed = random_range(-3, 3);
	vspeed = random_range(1, 7);
}

function moveParticlesLeft()
{
	speed = random_range(-1, -7);
	vspeed = random_range(-3, 3);
}

function moveParticlesRight()
{
	speed = random_range(1, 7);
	vspeed = random_range(-3, 3);
}