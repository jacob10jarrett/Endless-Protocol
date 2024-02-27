// Calculate health percentage
var healthPercent = currentHealth / maxHealth;

// Set up health bar dimensions and position
var healthBarWidth = 300;
var healthBarHeight = 30;
var healthBarX = 20;  // Adjust as needed
var healthBarY = 60;  // Adjust as needed, placed below the dash cooldown bar

// Draw the health bar background
draw_set_color(c_gray);
draw_rectangle(healthBarX, healthBarY, healthBarX + healthBarWidth, healthBarY + healthBarHeight, false);

// Draw the current health portion of the health bar
draw_set_color(c_green);
draw_rectangle(healthBarX, healthBarY, healthBarX + healthBarWidth * healthPercent, healthBarY + healthBarHeight, false);


//Exp bar
var screenWidth = display_get_gui_width() - 20
draw_set_color(c_black); 
draw_rectangle(20, 20, screenWidth, 0, false)
draw_text(60,20,playerLevel)


if (playerExp / expMax * screenWidth > 20)
{
	draw_set_color(c_aqua); 
	draw_rectangle(20, 20, (playerExp / expMax * screenWidth), 0, false)
}

if (playerExp >= expMax)
{
	playerExp = 0
	expMax = (30 + (playerLevel * 100) - 20)
	playerLevel++
}