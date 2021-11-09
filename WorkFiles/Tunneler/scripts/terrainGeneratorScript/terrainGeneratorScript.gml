// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function generateTerrain()
{
	initialYPosition = room_height;
	yPosition = 0;
	cap = 100;
	
	terrainTypes = 
	[
		blockObject,
		circleObject,
		triangleObject,
	]

	for(xPosition = 0; xPosition < room_width; xPosition += 1)
	{
		randomize();
	
		yPosition = irandom_range(initialYPosition, initialYPosition - cap * random_range(0, 1.2));
	
		instance_create_layer(xPosition, yPosition, "Terrain", terrainTypes[irandom_range(0, array_length(terrainTypes) - 1)]);
		instance_create_depth(xPosition, initialYPosition - 100, 1, landingBlockObject);
	}
}