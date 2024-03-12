// Determine if the game is transitioning to a paused state
if (!isPaused && instance_exists(obj_cardParent)) {
    // Transitioning to paused
    isPaused = true;
    pauseStartTime = current_time; // Record the pause start time
}

// Determine if the game is transitioning to an unpaused state
else if (isPaused && !instance_exists(obj_cardParent) && !global.paused) {
    // Transitioning to unpaused
    var pauseDuration = current_time - pauseStartTime; // Calculate pause duration
    startTime += pauseDuration; // Adjust the startTime to account for the pause
    isPaused = false;
}

// Check global pause separately to allow for other game-wide pause conditions
if (global.paused) {
    isPaused = true;
}

// Room-specific visibility and running checks
if (room == rm_game2) {
    visible = true;
    if (!running && !isPaused) {
        // Only start or resume the stopwatch if it's not paused and not already running
        if (!running) {
            startTime = current_time - (totalTime - currentTime);
            running = true;
        }
    }
} else {
    visible = false;
    running = false;
}

// Update the stopwatch only if running and not paused
if (running && !isPaused) {
    var elapsedTime = current_time - startTime;
    currentTime = totalTime - elapsedTime;

    // End game conditions
    if (currentTime <= 0) {
        currentTime = 0;
        alarm[0] = 120; // Example delay before triggering end game conditions
        triggerEndGameConditions();
        running = false; // Stop the stopwatch
    }
}
