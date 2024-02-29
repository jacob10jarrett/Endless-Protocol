// Initialize mission texts
mission_texts[0] = "Emergency Distress Signal Activation Detected";
mission_texts[1] = "Transmitting from Sector 49, Coordinates: 35.307169,-80.735726";

full_text = mission_texts[0] + "\n" + mission_texts[1];

// Select a random mission text
full_text = mission_texts[irandom(array_length_1d(mission_texts) - 1)];

// Typing animation settings
display_length = 0; 
type_speed = 1; 
type_timer = 0; 
is_typing = true; 

// Pagination settings
current_page = 0;
chars_per_page = room_width / 10; // Adjust to fit your room width and desired font size

// Initialize "Next" button visibility
obj_button_next.visible = false;
