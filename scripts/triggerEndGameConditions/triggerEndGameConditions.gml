function triggerEndGameConditions() {
    // Stop the stopwatch
	
    with (obj_stopwatch) {
        currentTime = 0;
        running = false;
    }
    
    // Handle obj_enemy1 defeat
    with (obj_enemy1) {
        // Create obj_deadEnemy1 at this location
        instance_create_layer(x, y, "Bodies_Effects", obj_deadEnemy1);
        instance_destroy();
    }

    // Handle obj_enemy2 defeat
    with (obj_enemy2) {
        // Create obj_deadEnemy2 at this location
        instance_create_layer(x, y, "Bodies_Effects", obj_deadEnemy2); // Ensure obj_deadEnemy2 exists and is correct
        instance_destroy();
    }
	
    with (obj_exp1) { instance_destroy(); }
    with (obj_exp2) { instance_destroy(); }
    with (obj_exp3) { instance_destroy(); }
	
	room_goto(rm_win)
}
