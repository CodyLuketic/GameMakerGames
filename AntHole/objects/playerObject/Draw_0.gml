/// @description Insert description here
// You can write your code in this editor

draw_self();
draw_set_colour(c_white);

if(!mouse_check_button(0) 
   && !collision_line(x, y, mouse_x, mouse_y, dirtObject, false, false) 
   && !collision_line(x, y, mouse_x, mouse_y, bedRockObject, false, false)
  )
{
	draw_line_width(x, y, mouse_x, mouse_y, 5);
	
	if(position_meeting(mouse_x, mouse_y, enemyObject))
	{
		global.terrainAdded = false;
		
		temp = instance_position(mouse_x, mouse_y, all);
		
		temp.image_xscale += 0.03;
		temp.image_yscale += 0.03;
		
		inflateCounter++;
		
		if(inflateCounter > 30)
		{
			instance_destroy(temp);
			
			global.score += 10;
			
			inflateCounter = 0;
		}
	}
	else {
		inflateCounter = 0;
	}
}
else if(!mouse_check_button(0)
		&& collision_line(x, y, mouse_x, mouse_y, dirtObject, false, false) 
	   )
{
	dirtBlock = collision_line(x, y, mouse_x, mouse_y, dirtObject, false, false);
	
	draw_line_width(x, y, dirtBlock.x, dirtBlock.y, 5);
}
else if(!mouse_check_button(0)
		&& collision_line(x, y, mouse_x, mouse_y, bedRockObject, false, false) 
	   )
{
	bedRockBlock = collision_line(x, y, mouse_x, mouse_y, bedRockObject, false, false);
	
	draw_line_width(x, y, bedRockBlock.x, bedRockBlock.y, 5);
}