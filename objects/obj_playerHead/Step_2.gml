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
if (image_angle >= 60 and image_angle <= 90) //50-90 lock at 50
{
	image_angle = 60
}

if (image_angle >= 270 and image_angle <= 320) //270-300 lock at 300
{
	image_angle = 320
}

if (image_angle >= 90 and image_angle <= 120) //90-110 lock at 110
{
	image_angle = 120
}

if (image_angle >= 220 and image_angle <= 270) //240-270 lock at 240
{
	image_angle = 220
}

x = obj_player.x
y = obj_player.y - 38

