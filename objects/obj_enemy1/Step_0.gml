if (global.paused) return; // Stops processing if the game is paused

// Check if the upgrade object exists, stopping the animation if it does.
if (instance_exists(obj_upgrade)) {
    return;
}

// Variables for movement calculation
var _hsp = 0;
var _vsp = 0;
var clearPath = !collision_line(x, y, obj_player.x, obj_player.y, obj_bounds, true, false) && !collision_line(x, y, obj_player.x, obj_player.y, obj_boundsCorner, true, false);
var tooCloseToBoundary = (distance_to_object(obj_bounds) < 50 || distance_to_object(obj_boundsCorner) < 50);

if (clearPath && !tooCloseToBoundary) {
    // Direct movement logic towards the player, as the path is clear and safe

    // Calculate the direction towards the player
    direction = point_direction(x, y, obj_player.x, obj_player.y);
    var _hsp = lengthdir_x(movementSpeed, direction);
    var _vsp = lengthdir_y(movementSpeed, direction);

    // Attempt horizontal and vertical movement if no collision is detected
    if (!place_meeting(x + _hsp, y, obj_bounds) && !place_meeting(x + _hsp, y, obj_boundsCorner)) {
        x += _hsp;
    } else {
        _hsp = 0; // Halt horizontal movement on collision
    }

    if (!place_meeting(x, y + _vsp, obj_bounds) && !place_meeting(x, y + _vsp, obj_boundsCorner)) {
        y += _vsp;
    } else {
        _vsp = 0; // Halt vertical movement on collision
    }
} else {
    // Movement logic when the path is blocked
    // Calculate the direction towards the player
    var directionToPlayer = point_direction(x, y, obj_player.x, obj_player.y);

    // Prioritize movement based on greater distance (horizontal or vertical)
    var _vDistance = abs(obj_player.y - y);
    var _hDistance = abs(obj_player.x - x);

    if (_vDistance > _hDistance) {
        // Vertical movement prioritization
        _vsp = (obj_player.y > y) ? movementSpeed : -movementSpeed;
        if (!place_meeting(x, y + _vsp, obj_bounds)) {
            y += _vsp;
        } else {
            // If vertical movement is blocked, attempt horizontal movement
            _hsp = (obj_player.x > x) ? movementSpeed : -movementSpeed;
            if (!place_meeting(x + _hsp, y, obj_bounds)) {
                x += _hsp;
            }
        }
    } else {
        // Horizontal movement prioritization
        _hsp = (obj_player.x > x) ? movementSpeed : -movementSpeed;
        if (!place_meeting(x + _hsp, y, obj_bounds)) {
            x += _hsp;
        } else {
            // If horizontal movement is blocked, attempt vertical movement
            _vsp = (obj_player.y > y) ? movementSpeed : -movementSpeed;
            if (!place_meeting(x, y + _vsp, obj_bounds)) {
                y += _vsp;
            }
        }
    }
}

// Adjust sprite orientation based on the player's position
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