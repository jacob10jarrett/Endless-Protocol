/// @description Spawn enemy
alarm[0] = spawnTick;

if(instance_exists(obj_upgrade))
{
    exit;
}

var _vx = camera_get_view_x(view_camera[0]);
var _vy = camera_get_view_y(view_camera[0]);
var _vw = camera_get_view_width(view_camera[0]);
var _vh = camera_get_view_height(view_camera[0]);
instance_activate_region(_vx - 10, _vy - 10, _vw + 10, _vh + 20, 1);

instance_activate_object(obj_stopwatch);
instance_activate_object(obj_dashUI);
instance_activate_object(obj_game);
instance_activate_object(obj_displayMessage);
instance_activate_object(obj_stopwatch);

var dir = irandom_range(0, 360);
var XX = obj_player.x + lengthdir_x(2000, dir );
var YY = obj_player.y + lengthdir_y(2000, dir );

// Check if spawn coordinates are OUT OF BOUNDS
if (!position_meeting(XX,YY, [obj_bounds, obj_boundsCorner]))
{
    // Determine which enemy type to spawn
    var spawnEnemy2 = irandom_range(1, 4) == 1;
    var spawnEnemy3 = !spawnEnemy2 && irandom_range(1, 4) == 1; // 25% chance for obj_enemy3 if obj_enemy2 is not spawned

    // Determine the enemy type to spawn
    var enemyTypeToSpawn = spawnEnemy3 ? obj_enemy3 : (spawnEnemy2 ? obj_enemy2 : obj_enemy1);

    // Create the chosen enemy type
    instance_create_layer(XX, YY, "Instances", enemyTypeToSpawn);
}
