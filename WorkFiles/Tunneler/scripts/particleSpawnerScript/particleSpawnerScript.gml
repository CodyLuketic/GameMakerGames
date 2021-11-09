// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function spawnParticlesDown()
{
	spawnCount = 200;
	
	for(var i = 0; i < spawnCount; i++)
	{
		instance_create_layer(x - 9, y - 27, "Particles", particleDownObject);
		instance_create_layer(x + 9, y - 27, "Particles", particleDownObject);
	}
}

function spawnParticlesLeft()
{
	spawnCount = 200;
	
	for(var i = 0; i < spawnCount; i++)
	{
		instance_create_layer(x - 13, y - 15, "Particles", particleLeftObject);
	}
}

function spawnParticlesRight()
{
	spawnCount = 200;
	
	for(var i = 0; i < spawnCount; i++)
	{
		instance_create_layer(x + 12, y - 15, "Particles", particleRightObject);
	}
}