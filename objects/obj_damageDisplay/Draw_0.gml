draw_set_font(fnt_titlescreen); 
draw_set_color(c_red); 
draw_set_alpha(alpha);

var drawSize = size * .6; 
draw_text_transformed(x, y, string(damageAmount), drawSize, drawSize, 0);

// Update animation variables
alpha -= 0.02;
size -= 0.01; 
if (size < 0.5) { 
    size = 0.5;
}


lifetime -= 1;
if (lifetime <= 0) {
    instance_destroy();
}

//Important - maintain other UI components
draw_set_color(c_white); // Reset color to default
draw_set_alpha(1); // Reset alpha to fully opaque