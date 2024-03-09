// Skip movement if an upgrade is present
if (instance_exists(obj_upgrade)) {
    image_speed = 0;
    return;
}

// Calculate direction towards the player every step
direction = point_direction(x, y, obj_player.x, obj_player.y);

// Calculate the movement vector based on direction and movementSpeed
var _hsp = lengthdir_x(movementSpeed, direction);
var _vsp = lengthdir_y(movementSpeed, direction);

// Check for collision in the direction of movement before actual movement
if (!place_meeting(x + _hsp, y, obj_bounds) && !place_meeting(x + _hsp, y, obj_boundsCorner)) {
    x += _hsp; // Move horizontally if no collision
} else {
    _hsp = 0; // Stop horizontal movement on collision
}

if (!place_meeting(x, y + _vsp, obj_bounds) && !place_meeting(x, y + _vsp, obj_boundsCorner)) {
    y += _vsp; // Move vertically if no collision
} else {
    _vsp = 0; // Stop vertical movement on collision
}

// If movement is blocked, try to find a new path
if (_hsp == 0 && _vsp == 0) {
    if (!path_exists(path) || path_position == 1) {
        if (mp_grid_path(global.mp_grid, path, x, y, obj_player.x, obj_player.y, false)) {
            path_start(path, 2, path_action_stop, false);
        }
    }
}

// Sprite flipping based on player position
image_xscale = (obj_player.x > x) ? 1 : -1;

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
