draw_set_font(fnt_titlescreen);
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_set_color(c_green)

// Draw the static part of the text
draw_text(room_width / 2, 400, "Protocol Completion: ");

// Conditionally draw the animated part
if(blinkState || animationStep < string_length(fullText)){
    draw_text(room_width / 2 + string_width("Protocol Completion: "), 400, displayText);
}


