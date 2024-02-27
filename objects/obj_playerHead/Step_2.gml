dir = point_direction(x, y, mouse_x, mouse_y);
dir = (dir + 360) % 360;
if (mouse_x < x) 
	{
        image_xscale = -abs(image_xscale);
        dir += 180;
    } 
	else 
	{
        image_xscale = abs(image_xscale)
    }

    

dir = (dir + 360) % 360;
image_angle = dir;
if (image_angle >= 60 and image_angle <= 90) //60-90 lock at 60
{
	image_angle = 60
}

if (image_angle >= 270 and image_angle <= 320) //270-320 lock at 320
{
	image_angle = 320
}

if (image_angle >= 90 and image_angle <= 120) //90-120 lock at 120
{
	image_angle = 120
}

if (image_angle >= 220 and image_angle <= 270) //220-270 lock at 220
{
	image_angle = 220
}

x = obj_player.x
y = obj_player.y - 38

