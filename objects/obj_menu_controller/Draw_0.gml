draw_set_font(fnt_titlescreen3);

if (show_press_any_button) {
    var dots = "...."; // Base string of dots
    var numDots = counter div 30 % 4; // Change '30' to adjust speed, '4' is the number of phases
    var displayText = "Press  any  button" + string_copy(dots, 1, numDots); // Construct the display text

    // Draw the text at the desired position
    draw_text(x, y, displayText);
}