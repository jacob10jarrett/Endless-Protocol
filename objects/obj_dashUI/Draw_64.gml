var player = instance_find(obj_player, 0);
if (instance_exists(player)) {
    if (!player.isDashing || player.dashTimer < player.dashCooldown) {
        var totalSections = 5;
        var sectionsFilled = floor((player.dashTimer / player.dashCooldown) * totalSections); // Calculate how many sections should be fully shown
        var partialSection = (player.dashTimer / player.dashCooldown) * totalSections - sectionsFilled; // Calculate the fill state of the next section
        var barWidth = 150;
        var barHeight = 20;
        var xPosition = 20;
        var yPosition = 70;
        var sectionWidth = barWidth / totalSections;
        var outlineThickness = 2; // Thickness of the outline

        // Draw the black outline
        draw_set_color(c_black);
        draw_rectangle(xPosition - outlineThickness, yPosition - outlineThickness, xPosition + barWidth + outlineThickness, yPosition + barHeight + outlineThickness, false);

        // Draw the background of the dash bar
        draw_set_color(c_black);
        draw_rectangle(xPosition, yPosition, xPosition + barWidth, yPosition + barHeight, false);

        // Draw sections
        for (var i = 0; i < totalSections; i++) {
            if (i < sectionsFilled) {
                // Fully filled section
                draw_set_color(c_blue);
                draw_rectangle(xPosition + sectionWidth * i, yPosition, xPosition + sectionWidth * (i + 1), yPosition + barHeight, false);
            } else if (i == sectionsFilled && partialSection > 0) {
                // Partially filled section - flashing
                var flashing = (current_time % 1000) < 500; // Flash based on current_time
                if (flashing) {
                    draw_set_color(c_navy); // Flashing color
                } else {
                    draw_set_color(c_blue); // Normal color
                }
                draw_rectangle(xPosition + sectionWidth * i, yPosition, xPosition + sectionWidth * (i + 1), yPosition + barHeight, false);
            }
        }

        // Draw dividing lines between sections
        draw_set_color(c_black);
        for (var i = 1; i < totalSections; i++) {
            var lineX = xPosition + sectionWidth * i;
            draw_line(lineX, yPosition, lineX, yPosition + barHeight);
        }
    }
}
