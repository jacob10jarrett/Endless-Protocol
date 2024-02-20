if (hit) {
    // Change sprite color to red
    draw_set_colour(c_red);
} else {
    // Reset to default color
    draw_set_colour(c_white);
}

// Draw the enemy sprite
draw_self();

// Draw the health bar or other elements here, as previously described

// Reset the drawing color to default after drawing is done
draw_set_colour(c_white);