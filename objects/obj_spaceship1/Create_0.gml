// Seed the random number generator - consider doing this once at game start instead
randomize();

// 20% chance for the spaceship to "activate"
if (random_range(0, 1) < 0.2) {
    // Initialize speeds
    distant_speed = 3;
    mid_speed = 4;
    near_speed = 5;

    // Initialize global particle system if not already done
    if (!part_system_exists(global.particleSystem)) {
        global.particleSystem = part_system_create();
        global.smokeParticle = part_type_create();
        part_type_shape(global.smokeParticle, pt_shape_smoke);
        part_type_scale(global.smokeParticle, 0.25, 0.25); // Small particles
        part_type_speed(global.smokeParticle, 0.5, 1, -0.01, 0);
        part_type_direction(global.smokeParticle, 0, 360, 0, 0);
        part_type_life(global.smokeParticle, 10, 60);
        part_type_alpha1(global.smokeParticle, 0.6);
        part_type_color3(global.smokeParticle, c_orange, c_white, c_white);
        part_type_alpha2(global.smokeParticle, 1, 0);
        part_system_layer(global.particleSystem, "Instances_2");
    }

} else {
    // If the spaceship doesn't "activate", destroy it immediately
    instance_destroy();
}
