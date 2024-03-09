function check_for_player() {
    // Define the maximum distance to check for the player
    var max_distance = 2000; // Example distance, adjust as needed
    var movementSpeed = 2; // Adjustable movement speed
	var some_threshold_for_recalculation = 60;

    // Calculate distance to the player
    var distance_to_player = point_distance(x, y, obj_player.x, obj_player.y);

    // Only attempt pathfinding if within max_distance
    if (distance_to_player <= max_distance) {
        // Check if the entity is already following a path or needs to recalculate
        if (!path_exists(path) || path_position == 1 || distance_to_player > some_threshold_for_recalculation) {
            // Attempt to find a new path towards the player, allowing for diagonal movement randomly
            var allowDiagonal = choose(true, false); // Randomly allow diagonal movement
            var foundPath = mp_grid_path(global.mp_grid, path, x, y, obj_player.x, obj_player.y, allowDiagonal);
        
            // If a path is found, start following it
            if (foundPath) {
                path_start(path, movementSpeed, path_action_stop, false);
            }
        }
    }
}
