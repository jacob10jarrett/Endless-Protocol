//Movement
key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));

hsp = (key_right - key_left) * my_speed;
vsp = (key_down - key_up) * my_speed;

// Collision detection
move_and_collide(hsp * my_speed, vsp * my_speed, obj_Collision);

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




