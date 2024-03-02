if(instance_exists(obj_upgrade))
{
	exit;
}

dir = point_direction(x, y, mouse_x, mouse_y);

 



if(obj_player.image_xscale < 0)
{
	image_xscale = -abs(image_xscale);
	x = obj_player.x + 18
	y = obj_player.y - 20
    dir += 180;
}
else
{
	image_xscale = abs(image_xscale)
	x = obj_player.x - 18
	y = obj_player.y - 20

}

image_angle = dir
