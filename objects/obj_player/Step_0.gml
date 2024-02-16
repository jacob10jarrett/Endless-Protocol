//Movement inputs
keyRight = keyboard_check(ord("D"));
keyLeft = keyboard_check(ord("A"));
keyUp = keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S"));
keyDash = keyboard_check_pressed(vk_space);

//player movement
	//direction
	var _hsp = (keyRight - keyLeft) * mySpeed
	var _vsp = (keyDown - keyUp) * mySpeed
	
	//Collision
	if place_meeting(x + _hsp, y, obj_bounds)
	{
		_hsp = 0
	}
	if place_meeting(x, y + _vsp, obj_bounds)
	{
		_vsp = 0
	}
	
	x += _hsp
	y += _vsp
	


// Player sprite animation stops playing when not moving
if(_hsp == 0) and (_vsp == 0)
{
	image_index = 1;
}


// Sprite flipping
if (keyLeft) 
{
    // If moving left, flip the sprite
    if (image_xscale > 0) 
	{
        image_xscale *= -1; // Flip horizontally
    }
} else if (keyRight) {
    // If moving right, ensure the sprite is in its default orientation
    if (image_xscale < 0) 
	{
        image_xscale *= -1; // Make it positive
    }
}

// Increase dash timer until it reaches the dash cooldown
if (dashTimer < dashCooldown && !isDashing) 
{
    dashTimer++;
}

// Dash Activation
if (keyboard_check_pressed(vk_space) && !isDashing && dashTimer >= dashCooldown) 
{
    isDashing = true;
    dashTimer = 0;
    var _trail = instance_create_layer(x, y, "Instances", obj_dashTrail);
	
}

if (isDashing) 
{
	// Dash in the direction player is facing
    if (image_xscale < 0) 
	{
        x -= dashSpeed;
    } else 
	{
        x += dashSpeed;
    }

    dashSpeed--;
	// Stop dashing once the speed is <= 0
	// Using speed as dash duration to create effect
    if (dashSpeed <= 0) 
	{
        isDashing = false;
		dashSpeed = mySpeed * 4;
    }
}

