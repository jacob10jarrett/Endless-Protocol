//Movement inputs
key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));

//player movement
	//direction
	var hsp = (key_right - key_left) * my_speed
	var vsp = (key_down - key_up) * my_speed
	
	//Collision
	if place_meeting(x + hsp, y, obj_bounds)
	{
		hsp = 0
	}
	if place_meeting(x, y + vsp, obj_bounds)
	{
		vsp = 0
	}
	
	x += hsp
	y += vsp
	


// Player sprite animation stops playing when not moving
if(hsp == 0) and (vsp == 0)
{
	image_index = 1;
}


// Sprite flipping
if (key_left) {
    // If moving left, flip the sprite
    if (image_xscale > 0) {
        image_xscale *= -1; // Flip horizontally
    }
} else if (key_right) {
    // If moving right, ensure the sprite is in its default orientation
    if (image_xscale < 0) {
        image_xscale *= -1; // Make it positive
    }
}




