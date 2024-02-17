dir = point_direction(x, y, mouse_x, mouse_y);
if (mouse_x < x) 
	{
        image_xscale = -1;
        dir += 180;
    } 
	else 
	{
        image_xscale = 1;
    }

    

image_angle = dir;
x = obj_player.x
y = obj_player.y