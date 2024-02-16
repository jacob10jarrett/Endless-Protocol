var player = instance_find(obj_player, 0);
if (instance_exists(player)) {
    // Only show cooldown UI if player is not dashing or cooldown is in progress
    if (!player.isDashing || player.dashTimer < player.dashCooldown) {
        var cooldownPercent = (player.dashCooldown - player.dashTimer) / player.dashCooldown;
        var barWidth = 100;
        var barHeight = 20;
        var xPosition = 10;
        var yPosition = 10;

        // Background
        draw_set_color(c_black);
        draw_rectangle(xPosition, yPosition, xPosition + barWidth, yPosition + barHeight, false);

        // Foreground (cooldown indicator)
        draw_set_color(c_blue);
        draw_rectangle(xPosition, yPosition, xPosition + barWidth * cooldownPercent, yPosition + barHeight, false);
    }
}
