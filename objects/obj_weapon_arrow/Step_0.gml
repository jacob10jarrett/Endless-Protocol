if(instance_exists(obj_upgrade))
{
	exit;
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
		audio_play_sound(snd_hitmarker,0,false)
    }
}

var offsetX = lengthdir_x(-16, image_angle); // Offset left by 8 pixels
var offsetY = lengthdir_y(-16, image_angle); // Use image_angle to determine "left"
part_emitter_region(partSystem, partEmitter, x + offsetX, x + offsetX, y + offsetY, y + offsetY, ps_shape_line, ps_distr_linear);