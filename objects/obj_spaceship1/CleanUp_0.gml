if (global.particleSystem != -1 && part_system_exists(global.particleSystem)) {
    part_system_destroy(global.particleSystem);
    global.particleSystem = -1; // Reset to the initial invalid ID
}