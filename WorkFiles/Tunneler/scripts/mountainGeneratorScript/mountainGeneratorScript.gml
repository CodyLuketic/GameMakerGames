// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function generateMountain()
{
	randomize();
	
	mountainHeight = 0;
	xPosition = 0;
	initialYPosition = 950;
	
	terrainTypes = 
	[
		blockObject,
		circleObject,
		circleObject,
		triangleObject,
		triangleObject,
	]
	
	mountainHeight = irandom_range(room_height / 6, room_height - 300);
	xPosition = irandom_range(0, room_width);
	
	terrainChoice = terrainTypes[irandom_range(0, array_length(terrainTypes) - 1)];

	for(i = 0; i < mountainHeight; i += 20)
	{
		instance_create_layer(xPosition - 60, initialYPosition - i / 1.4, "Terrain", terrainChoice);
		instance_create_layer(xPosition - 40, initialYPosition - i / 1.2, "Terrain", terrainChoice);
		instance_create_layer(xPosition - 20, initialYPosition - i / 1.1, "Terrain", terrainChoice);
		instance_create_layer(xPosition, initialYPosition - i, "Terrain", terrainChoice);
		instance_create_layer(xPosition + 20, initialYPosition - i / 1.1, "Terrain", terrainChoice);
		instance_create_layer(xPosition + 40, initialYPosition - i / 1.2, "Terrain", terrainChoice);
		instance_create_layer(xPosition + 60, initialYPosition - i / 1.4, "Terrain", terrainChoice);
	}
}