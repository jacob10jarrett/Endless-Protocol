message = ""; 
fullMessage = "at the University of North Carolina at Charlotte for our Project One."; 
charIndex = 0; // Current index of character to display next
typeSpeed = room_speed * 0.01; // How fast the characters appear
timer = 0; // Timer to control the typing speed
lineWidth = 0; // To keep track of the current line width
maxLineWidth = camera_get_view_width(view_camera[0]) - 30; // Max line width, adjust for padding