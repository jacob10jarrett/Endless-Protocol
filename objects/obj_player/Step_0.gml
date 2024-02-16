//Movement inputs
key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));
key_dash = keyboard_check_pressed(vk_space);

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

// Dash Activation
if (!isDashing && key_dash && dashTimer <= 0) {
    isDashing = true;
    dashTimer = dashLength;  // Set how long the dash should last
    // Set dash direction based on current movement input
    hsp = (key_right - key_left) * dashSpeed;
    vsp = (key_down - key_up) * dashSpeed;
}

// Dash
if (isDashing) {
    
    var trail = instance_create_layer(x, y, "Instances", obj_dashTrail);
    trail.image_xscale = image_xscale; 
    trail.image_yscale = image_yscale; 

    dashTimer--;  // Decrease dash timer
    if (dashTimer <= 0) {
        isDashing = false;  
        dashTimer = dashCooldown;  // Start cooldown
    }
} else {
    // Apply normal movement if not dashing
    hsp = (key_right - key_left) * my_speed;
    vsp = (key_down - key_up) * my_speed;

    if (dashTimer > 0) {
        dashTimer--;  
    }
}

x += hsp;
y += vsp;