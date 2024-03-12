if(instance_exists(obj_upgrade))
{
	exit;
	speed = 0
}

var closest_enemy = instance_nearest(x, y, obj_enemy_parent);

if (instance_exists(closest_enemy) && !closest_enemy.hit_by_arrow) {
    direction = point_direction(x, y, closest_enemy.x, closest_enemy.y);

    x += lengthdir_x(speed, direction);
    y += lengthdir_y(speed, direction);
    image_angle = direction;

    // Check for collision with the enemy
    if (place_meeting(x, y, closest_enemy)) {
        closest_enemy.hit_by_arrow = true; // Mark the enemy as hit by the arrow
    }
}

