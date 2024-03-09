// Health Bar Setup
var healthPercent = currentHealth / maxHealth;
var healthBarWidth = 300;
var healthBarHeight = 30;
var healthBarX = 20;
var healthBarY = 28; 
var sectionWidth = healthBarWidth / 3;

// Health Colors Based on Percentage
var highHealthColor = c_green;
var mediumHealthColor = c_yellow;
var lowHealthColor = c_red;

// Determine Health Color
var healthColor;
if (healthPercent > 0.8) {
    healthColor = highHealthColor;
} else if (healthPercent > 0.4) {
    healthColor = mediumHealthColor;
} else {
    healthColor = lowHealthColor;
}

// Draw Health Bar Background with Border
draw_set_color(c_black); // Border color
draw_rectangle(healthBarX - 2, healthBarY - 2, healthBarX + healthBarWidth + 2, healthBarY + healthBarHeight + 2, false); // Slightly larger rectangle for the border

draw_set_color(c_gray); // Background color
draw_rectangle(healthBarX, healthBarY, healthBarX + healthBarWidth, healthBarY + healthBarHeight, false);

// Draw Health Bar Filled Portion
draw_set_color(healthColor);
draw_rectangle(healthBarX, healthBarY, healthBarX + healthBarWidth * healthPercent, healthBarY + healthBarHeight, false);

// Draw Dividing Lines for Sections
draw_set_color(c_black); // Dividing lines color
for (var i = 1; i < 3; i++) { // For 3 sections, draw 2 dividing lines
    var lineX = healthBarX + sectionWidth * i;
    draw_line(lineX, healthBarY, lineX, healthBarY + healthBarHeight);
}

// XP Bar Setup 
var outlineThickness = 2;
var expBarHeight = 10;
var expBarY = 0 + outlineThickness;
var screenWidth = display_get_gui_width(); 

// Draw XP Bar with Outline
draw_set_color(c_black);
draw_rectangle(0 - outlineThickness, expBarY - outlineThickness, screenWidth + outlineThickness, expBarY + expBarHeight + outlineThickness, false);

draw_set_color(c_gray);
draw_rectangle(0, expBarY, screenWidth, expBarY + expBarHeight, false);

// Draw the current EXP portion of the XP bar
draw_set_color(c_aqua);
var expWidth = max(1, (playerExp / expMax) * screenWidth);
draw_rectangle(0, expBarY, expWidth, expBarY + expBarHeight, false);

// Draw Player Level Text in the middle of the screen
var centerX = screenWidth / 2;
var levelTextY = expBarY + expBarHeight + outlineThickness + 3; // Adjusted
draw_set_font(fnt_titlescreen3);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text(centerX, levelTextY, string(playerLevel));
