direction = random(360)
speed = 6
image_xscale = .7
image_yscale = .7
image_angle = direction;

// Create a white particle effect
partType = part_type_create();
part_type_shape(partType, pt_shape_square); // Shape
part_type_scale(partType, 0.03, 0.03); // size 
part_type_speed(partType, 0.5, 1, 0, 0); // Speed and variation 
part_type_direction(partType, 0, 360, 0, 0);
part_type_life(partType, 15, 20); // Life 
part_type_color2(partType, make_color_rgb(128, 0, 128), c_white); 

// Create the particle system and emitter
partSystem = part_system_create();
partEmitter = part_emitter_create(partSystem);
part_emitter_region(partSystem, partEmitter, x, x, y, y, ps_shape_line, ps_distr_linear);
part_emitter_stream(partSystem, partEmitter, partType, 10); // Adjust the rate as needed
