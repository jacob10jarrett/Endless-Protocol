if(instance_exists(obj_upgrade))
{
	image_speed = 0
	exit;
}

// Movement
var moveRight = keyboard_check(ord("D")) || keyboard_check(vk_right);
var moveLeft = keyboard_check(ord("A")) || keyboard_check(vk_left);
var moveUp = keyboard_check(ord("W")) || keyboard_check(vk_up);
var moveDown = keyboard_check(ord("S")) || keyboard_check(vk_down);

var targetHSpeed = (moveRight - moveLeft) * maxSpeed;
var targetVSpeed = (moveDown - moveUp) * maxSpeed;


// Limit how fast the player moves when they turn around 
// Adjust horizontal speed towards target speed
if (_hsp < targetHSpeed) {
    _hsp = min(_hsp + acceleration, targetHSpeed);
} else if (_hsp > targetHSpeed) {
    _hsp = max(_hsp - deceleration, targetHSpeed);
}

// Adjust vertical speed towards target speed
if (_vsp < targetVSpeed) {
    _vsp = min(_vsp + acceleration, targetVSpeed);
} else if (_vsp > targetVSpeed) {
    _vsp = max(_vsp - deceleration, targetVSpeed);
}

// Normalize diagonal movement if moving too fast
var movementMagnitude = sqrt(_hsp * _hsp + _vsp * _vsp);
if (movementMagnitude > maxSpeed) {
    var scale = maxSpeed / movementMagnitude;
    _hsp *= scale;
    _vsp *= scale;
}

// Stop immediately if no keys are pressed
if (!moveRight && !moveLeft) {
    _hsp = 0;
}
if (!moveUp && !moveDown) {
    _vsp = 0;
}

// Apply movement
x += _hsp;
y += _vsp;

	
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