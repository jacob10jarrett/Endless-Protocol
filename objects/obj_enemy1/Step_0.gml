// Skip movement if an upgrade is present
if (instance_exists(obj_upgrade)) {
    image_speed = 0;
    speed = 0;
    return;
}

// Calculate direction towards the player every step to dynamically adjust movement
direction = point_direction(x, y, obj_player.x, obj_player.y);

// Calculate the movement vector based on direction and movementSpeed
var _dx = lengthdir_x(movementSpeed, direction);
var _dy = lengthdir_y(movementSpeed, direction);
_hsp = _dx;
_vsp = _dy;

// Attempt to move towards the player with collision checking
if (!place_meeting(x + _hsp, y + _vsp, obj_bounds) && !place_meeting(x + _hsp, y + _vsp, obj_boundsCorner)) {
    // If no collision, move normally
    x += _hsp;
    y += _vsp;
} else {
    // If collision is detected, try to find a new path around the obstacle
    if (mp_grid_path(global.mp_grid, path, x, y, obj_player.x, obj_player.y, false)) {
        // If a path is found, start following it
        path_start(path, 2, path_action_stop, false);
    }
}


// Sprite flipping based on player position
if (obj_player.x > x)
{ 
    image_xscale = abs(image_xscale);
} 
else 
{
    image_xscale = -abs(image_xscale);
}

// Calculate distance to the player
var distanceToPlayer = point_distance(x, y, obj_player.x, obj_player.y);

// Check distance and start countdown if close enough
if (distanceToPlayer <= 50 && !hasStartedCountdown) {
    hasStartedCountdown = true;
    detonationTimer = room_speed * .000002; 
}

// Handle the countdown
if (hasStartedCountdown) {
    if (detonationTimer > 0) {
        detonationTimer--;
    } else {
        // Time to detonate! Create dark gray smoke particle effect
		var pSystem = part_system_create();

		// Dark gray smoke particles
		var pSmoke = part_type_create();
		part_type_shape(pSmoke, pt_shape_smoke);
		part_type_scale(pSmoke, 1, 1);
		part_type_speed(pSmoke, 0.5, 0.5, 0, 0);
		part_type_life(pSmoke, 30, 60);
		part_type_color1(pSmoke, c_dkgray);

		// Orange glow particles
		var pGlow = part_type_create();
		part_type_shape(pGlow, pt_shape_smoke);
		part_type_scale(pGlow, 2,2); // Slightly larger than smoke for the glow effect
		part_type_speed(pGlow, 0.5, 0.5, 0, 0);
		part_type_life(pGlow, 30, 60);
		part_type_color1(pGlow, c_gray); 
		part_type_alpha1(pGlow, 0.3); // Semi-transparent

		// Set up the particle system
		part_system_layer(pSystem, "Instances_1");
		part_system_automatic_update(pSystem, true);
		part_system_automatic_draw(pSystem, true);
		part_system_depth(pSystem, 200);

		// Create the particles
		part_particles_create(pSystem, x, y, pGlow, 10); // Create the glow first so it's behind
		part_particles_create(pSystem, x, y, pSmoke, 10);

        

        obj_player.currentHealth -= 33.34;

        // Destroy the enemy object to simulate the "detonation"
        instance_destroy();
    }
}
