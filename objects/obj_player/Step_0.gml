// Movement inputs
keyRight = keyboard_check(ord("D")) || keyboard_check(vk_right);
keyLeft = keyboard_check(ord("A")) || keyboard_check(vk_left);
keyUp = keyboard_check(ord("W")) || keyboard_check(vk_up);
keyDown = keyboard_check(ord("S")) || keyboard_check(vk_down);
keyDash = keyboard_check_pressed(vk_space); 

global.playerIsMoving = keyboard_check(ord("D")) || keyboard_check(ord("A")) || keyboard_check(ord("W")) || keyboard_check(ord("S")) || keyboard_check(vk_right) || keyboard_check(vk_left) || keyboard_check(vk_up) || keyboard_check(vk_down);


//player movement
	//direction
	_hsp = (keyRight - keyLeft) * mySpeed;
    _vsp = (keyDown - keyUp) * mySpeed;
	
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
if (mouse_x > x) 
{
    image_xscale = abs(image_xscale)
	playerDirection = 1

} else 
{
    image_xscale = -abs(image_xscale)
	playerDirection = -1
}

// Determine direction dash should go based on sign of hsp
var dashDirection = sign(_hsp)
if (dashDirection = 0)	// If standing still, default dash to player direction
{
	dashDirection = playerDirection
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
}

if (isDashing) 
{
    var _trail = instance_create_layer(x, y, "Instances", obj_dashTrail);
	_trail.image_xscale = image_xscale;  
    _trail.image_yscale = image_yscale;  
	
	
    var proposedX = x + (dashSpeed * dashDirection);

    if (!place_meeting(proposedX, y, obj_bounds)) 
    {
        x = proposedX;
    }

    dashSpeed--;

    // Stop dashing once the speed is <= 0
    // Using speed decrement as a timer for dash duration
    if (dashSpeed <= 0) 
    {
        isDashing = false;
		dashSpeed = mySpeed * 5
    }
}


