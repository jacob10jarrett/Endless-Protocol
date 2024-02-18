// Calculate health percentage
var healthPercent = currentHealth / maxHealth;

// Set up health bar dimensions and position
var healthBarWidth = 300;
var healthBarHeight = 30;
var healthBarX = 10;  // Adjust as needed
var healthBarY = 60;  // Adjust as needed, placed below the dash cooldown bar

// Draw the health bar background
draw_set_color(c_gray);
draw_rectangle(healthBarX, healthBarY, healthBarX + healthBarWidth, healthBarY + healthBarHeight, false);

// Draw the current health portion of the health bar
draw_set_color(c_green);
draw_rectangle(healthBarX, healthBarY, healthBarX + healthBarWidth * healthPercent, healthBarY + healthBarHeight, false);

// Draw the player sprite

