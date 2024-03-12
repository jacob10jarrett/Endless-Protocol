if (global.paused) return;

// Check for the existence of obj_upgrade and exit if it exists
if (instance_exists(obj_upgrade)) {
    exit;
}

if (room == rm_game2) {
    visible = true; 
} else {
    visible = false; 
}

// Handle the stopwatch based on the room and pause state
if (room == rm_game2) {
    // When in the game room and not paused, manage the stopwatch
    if (!global.paused) {
        if (!running) {
            // Start the stopwatch
            startTime = current_time - (totalTime - currentTime); // Adjust to maintain elapsed time on pause-resume
            running = true;
        } else {
            // Update the stopwatch
            var elapsedTime = current_time - startTime;
            currentTime = totalTime - elapsedTime;

            // Check if the stopwatch has reached or passed zero
            if (currentTime <= 0) {
                currentTime = 0;
				alarm[0] = 120;
				triggerEndGameConditions()
                running = false;
            }
        }
    }
} else {
    // If not in rm_game2, ensure the stopwatch is not running
    running = false;
}


if (room != rm_game2) {
    running = false;
}
