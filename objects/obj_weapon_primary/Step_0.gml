dir = point_direction(x, y, mouse_x, mouse_y);
if (mouse_x < x) 
	{
        image_xscale = -abs(image_xscale);
        dir += 180;
    } 
	else 
	{
        image_xscale = abs(image_xscale)
    }

    

image_angle = dir;
x = obj_player.x
y = obj_player.y