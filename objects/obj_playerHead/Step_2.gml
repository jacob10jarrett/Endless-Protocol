if(instance_exists(obj_upgrade))
{
	exit;
}

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

    

dir = (dir + 360) % 360;
image_angle = dir;
if (image_angle >= 40 and image_angle <= 110) //60-90 lock at 60
{
	image_angle = 40
}

if (image_angle >= 250 and image_angle <= 340) //270-320 lock at 320
{
	image_angle = 340
}

if (image_angle >= 70 and image_angle <= 140) //90-120 lock at 120
{
	image_angle = 130
}

if (image_angle >= 200 and image_angle <= 290) //220-270 lock at 220
{
	image_angle = 200
}

x = obj_player.x
y = obj_player.y - 38

