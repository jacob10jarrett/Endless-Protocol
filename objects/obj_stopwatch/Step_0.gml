if (instance_exists(obj_upgrade)) {
    exit;
}

if (running) {
    var elapsedTime = current_time - startTime;
    currentTime = totalTime - elapsedTime;
    
    // Stop the timer if it reaches 0 or less
    if (currentTime <= 0) {
        currentTime = 0;
        running = false;
        // Here you can add any actions you want to happen when the timer ends
    }
}
