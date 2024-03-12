function check_for_player() {
	if (!instance_exists(obj_player)) return;
    var max_distance = 8000; 

    // Calculate distance to the player
    var distance_to_player = point_distance(x, y, obj_player.x, obj_player.y);
    var some_threshold_for_recalculation = 60;

    // Only attempt pathfinding if within max_distance
    if (distance_to_player <= max_distance) {
        if (!path_exists(path) || path_position == 1 || distance_to_player > some_threshold_for_recalculation) {
            // Always disallow diagonal movement
            var allowDiagonal = false; 
            var foundPath = mp_grid_path(global.mp_grid, path, x, y, obj_player.x, obj_player.y, allowDiagonal);
       
            if (foundPath) {
                path_start(path, movementSpeed, path_action_stop, false);
            }
        }
    }
}