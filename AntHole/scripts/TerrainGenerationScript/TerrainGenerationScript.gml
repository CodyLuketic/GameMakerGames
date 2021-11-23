// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function generateTerrain(){
	blocks = 
	[
		dirtObject, 
		dirtObject, 
		dirtObject,
		dirtObject, 
		dirtObject, 
		dirtObject,
		dirtObject, 
		dirtObject, 
		dirtObject,
		dirtObject, 
		dirtObject, 
		dirtObject, 
		dirtObject, 
		dirtObject, 
		dirtObject,
		dirtObject, 
		dirtObject, 
		dirtObject,
		dirtObject, 
		dirtObject, 
		dirtObject,
		dirtObject, 
		dirtObject, 
		dirtObject,
		dirtObject, 
		dirtObject, 
		dirtObject,
		dirtObject, 
		dirtObject, 
		dirtObject, 
		dirtObject, 
		dirtObject, 
		dirtObject,
		dirtObject, 
		dirtObject, 
		dirtObject,
		dirtObject, 
		dirtObject, 
		dirtObject,
		dirtObject, 
		dirtObject, 
		dirtObject,
		dirtObject, 
		dirtObject, 
		dirtObject,
		dirtObject, 
		dirtObject, 
		dirtObject, 
		dirtObject, 
		dirtObject, 
		dirtObject,
		dirtObject, 
		dirtObject, 
		dirtObject, 
		bedRockObject,
		bedRockObject,
		enemyObject,
	]

	for(var i = 0; i < room_height; i += 32)
	{
		for(var j = 0; j < room_width; j += 32)
		{
			randomize();
		
			if(i < playerObject.y - 64 || i > playerObject.y + 64)
			{
				instance_create_layer(j, i, "Terrain", blocks[irandom_range(0, array_length(blocks) - 1)]);
			}
			else
			{
				if(j < playerObject.x - 64 || j > playerObject.x + 64)
				{
					instance_create_layer(j, i, "Terrain", blocks[irandom_range(0, array_length(blocks) - 1)]);
				}
			}
		}
	}
}