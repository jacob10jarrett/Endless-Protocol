//0 fps
image_speed = 0;

//random frame 1 to 4
image_index = irandom_range(1,3);

flip = irandom(1);

if (flip == 1)
{
	image_xscale = -image_xscale;
}