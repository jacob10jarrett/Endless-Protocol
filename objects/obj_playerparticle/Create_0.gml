particle_system = part_system_create();
depth = obj_player.depth + 1;
particle_system_emitter = part_emitter_create(particle_system);
part_system_automatic_draw(particle_system, true);

particle_spawn_cooldown = .04;
particle1 = part_type_create();
part_type_shape(particle1, pt_shape_cloud);
part_type_size(particle1, 0.2, 0.5, -0.01, 0); 
part_type_scale(particle1, .2, .2);
part_type_color1(particle1, make_color_rgb(12, 12, 12)); 
part_type_alpha3(particle1, 1, 0.8, 0);
part_type_speed(particle1, 0.5, 2, -0.1, 0); 
part_type_direction(particle1, 120, 360, 0, 0); 
part_type_gravity(particle1, 0.2, 270); 
part_type_orientation(particle1, 0, 359, 0, 0, true); 
part_type_blend(particle1, false); 
part_type_life(particle1, 1, 15); 
