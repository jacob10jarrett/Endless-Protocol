if (global.fading)
{
    if (!global.fadeComplete)
    {
        global.fadeAlpha += 0.15; // Adjust for fade speed
        
        if (global.fadeAlpha >= 1)
        {
            global.fadeAlpha = 1;
            global.fadeComplete = true;
            // Start an alarm to hold the black screen for 1 second before transitioning
            alarm[0] = 60;
        }
    }
    
    draw_set_color(c_black);
    draw_set_alpha(global.fadeAlpha);
    draw_rectangle(0, 0, display_get_width(), display_get_height(), false);
    draw_set_alpha(1); // Reset alpha to default
}
