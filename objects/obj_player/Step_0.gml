if (global.paused) return;

// Check for upgrade object existence
if(instance_exists(obj_upgrade))
{
    image_speed = 0;
    exit;
}

// Movement keys check
if(canMove)
{
var moveRight = keyboard_check(ord("D")) || keyboard_check(vk_right);
var moveLeft = keyboard_check(ord("A")) || keyboard_check(vk_left);
var moveUp = keyboard_check(ord("W")) || keyboard_check(vk_up);
var moveDown = keyboard_check(ord("S")) || keyboard_check(vk_down);

// Determine target speeds based on input
var targetHSpeed = (moveRight - moveLeft) * maxSpeed;
var targetVSpeed = (moveDown - moveUp) * maxSpeed;

// Determine target speeds based on input, with adjustments for specific directions
var targetHSpeed = (moveRight - moveLeft) * maxSpeed;
if (moveUp && !moveDown && !moveRight && !moveLeft) {
    targetVSpeed = (moveDown - moveUp) * (maxSpeed * 0.9); // Reduce vertical speed by half when moving up
    image_speed = -0.75; // Reverse and slow down animation speed
} else if (moveDown && !moveUp) {
    targetVSpeed = (moveDown - moveUp) * (maxSpeed * 0.8); // Slightly reduce vertical speed by 10% when moving down
    image_speed = 1; // Ensure normal animation speed
} else {
    targetVSpeed = (moveDown - moveUp) * maxSpeed;
    image_speed = 1; // Default animation speed
}

// Adjust horizontal speed towards target speed
if (_hsp < targetHSpeed) {
    _hsp = min(_hsp + acceleration, targetHSpeed);
} else if (_hsp > targetHSpeed) {
    _hsp = max(_hsp - deceleration, targetHSpeed);
}

if (place_meeting(x + _hsp, y, obj_bounds) || place_meeting(x + _hsp, y, obj_boundsCorner)) {
    while (!place_meeting(x + sign(_hsp), y, obj_bounds) && !place_meeting(x + sign(_hsp), y, obj_boundsCorner)) {
        x += sign(_hsp);
    }
    _hsp = 0;
}

// Adjust vertical speed towards target speed
if (_vsp < targetVSpeed) {
    _vsp = min(_vsp + acceleration, targetVSpeed);
} else if (_vsp > targetVSpeed) {
    _vsp = max(_vsp - deceleration, targetVSpeed);
}

if (place_meeting(x, y + _vsp, obj_bounds) || place_meeting(x, y + _vsp, obj_boundsCorner)) {
    while (!place_meeting(x, y + sign(_vsp), obj_bounds) && !place_meeting(x, y + sign(_vsp), obj_boundsCorner)) {
        y += sign(_vsp);
    }
    _vsp = 0;
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

} else {
	_hsp = 0;
    _vsp = 0;
}

global.playerIsMoving = (_hsp != 0 || _vsp != 0);

// Player sprite animation stops playing when not moving
if(_hsp == 0 && _vsp == 0)
{
    image_index = 1;
    image_speed = 0; // Ensure animation is stopped
}

// Sprite flipping based on mouse position
if (mouse_x > x) 
{
    image_xscale = abs(image_xscale);
    playerDirection = 1;
} 
else 
{
    image_xscale = -abs(image_xscale);
    playerDirection = -1;
}

// Determine dash direction based on horizontal speed or player direction
var dashDirection = sign(_hsp);
if (dashDirection == 0) {
    dashDirection = playerDirection;
}

// Increase dash timer until it reaches the dash cooldown
if (dashTimer < dashCooldown && !isDashing && canDash) 
{
    dashTimer++;
}

// Dash Activation
if (keyboard_check_pressed(vk_space) && !isDashing && dashTimer >= dashCooldown) 
{
    isDashing = true;
    dashTimer = 0;
    dashSpeed = mySpeed * 5; // Reset dash speed here if not done elsewhere
}

// Handle dashing logic
if (isDashing) {
    var _trail = instance_create_layer(x, y, "Instances", obj_dashTrail);
    _trail.image_xscale = image_xscale;
    _trail.image_yscale = image_yscale;

    var proposedX = x + (dashSpeed * dashDirection);

    // Enhanced collision check for dashing towards obj_bounds
    if (!place_meeting(proposedX, y, obj_bounds)) {
        x = proposedX;
    } else {
        isDashing = false; // Stop dashing if a collision would occur
    }

    dashSpeed--;

    if (dashSpeed <= 0) {
        isDashing = false;
    }

}
