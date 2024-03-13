// Step Event of the hacker bug object
if (instance_exists(obj_upgrade))
{
	speed = 0
	damage = 0
	exit;
}
// Find the nearest enemy
var nearest_enemy = instance_nearest(x, y, obj_enemy_parent);

// Move towards the nearest enemy
if (nearest_enemy != noone) {
    // Set direction towards the nearest enemy
    direction = point_direction(x, y, nearest_enemy.x, nearest_enemy.y);
    
    // Move towards the enemy
    speed = global.bug_speed; // Adjust as needed
}

