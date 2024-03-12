message = ""; 
fullMessage = "Thank you for taking the time to play our game. Endless Protocol was created for ITCS-4230 at UNC Charlotte for our Project One. More info...... "; 
charIndex = 0; // Current index of character to display next
typeSpeed = room_speed * 0.01; // How fast the characters appear
timer = 0; // Timer to control the typing speed
lineWidth = 0; // To keep track of the current line width
maxLineWidth = camera_get_view_width(view_camera[0]) - 10; // Max line width, adjust for padding