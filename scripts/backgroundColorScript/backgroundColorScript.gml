function setBackground()
{
	layer_id = layer_get_id("Background");
	background_id = layer_background_get_id(layer_id);

	cap = 100;

	red = 0;
	green = 0;
	blue = 100;

	makeRed = true;
	makeGreen = false;
	makeBlue = false;
}

function shiftBackgroundColor()
{
	if(makeRed == true)
	{
		red++;
	
		if(green > 0)
		{
			green--;	
		}
		if(blue > 0)
		{
			blue--;	
		}
	
		layer_background_blend(background_id, make_colour_rgb(red, green, blue));
	
		if(red == cap)
		{
			makeRed = false;
			makeGreen = true;
		}
	}

	if(makeGreen == true)
	{
		green++;
	
		if(red > 0)
		{
			red--;	
		}
		if(blue > 0)
		{
			blue--;	
		}
	
		layer_background_blend(background_id, make_colour_rgb(red, green, blue));
	
		if(green == cap)
		{
			makeGreen = false;
			makeBlue = true;
		}
	}

	if(makeBlue == true)
	{
		blue++;
	
		if(red > 0)
		{
			red--;	
		}
		if(green > 0)
		{
			green--;	
		}
	
		layer_background_blend(background_id, make_colour_rgb(red, green, blue));
	
		if(blue == cap)
		{
			makeBlue = false;
			makeRed = true;
		}
	}
}