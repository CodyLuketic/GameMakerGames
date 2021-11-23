/// @description Insert description here
// You can write your code in this editor

if(!instance_exists(enemyObject) && global.terrainAdded == false)
{
	global.terrainAdded = true;
	
	instance_destroy(dirtObject);
	instance_destroy(bedRockObject);
	
	generateTerrain();
}