depth = 4
direction = random(360)
speed = 6
image_angle = direction;
image_xscale *= 0.5;
image_yscale = image_xscale;

partType = part_type_create();
part_type_shape(partType, pt_shape_square); // Shape
part_type_scale(partType, 0.03, 0.03); // Size
part_type_speed(partType, 0.5, 1, 0, 0); // Speed and variation
part_type_direction(partType, 0, 360, 0, 0);
part_type_life(partType, 15, 20); // Life for a quick effect

// Color
part_type_color2(partType, make_color_rgb(0, 190, 255), c_white); 

// Create the particle system and emitter
partSystem = part_system_create();
partEmitter = part_emitter_create(partSystem);
part_emitter_region(partSystem, partEmitter, x, x, y, y, ps_shape_line, ps_distr_linear);
part_emitter_stream(partSystem, partEmitter, partType, 10); 



