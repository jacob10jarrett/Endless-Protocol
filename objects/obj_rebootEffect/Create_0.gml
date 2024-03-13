// List of messages
messages = [
    "System.error - Protocol Reset Initiated",
    "System.error - Realigning Timeline",
    "Commencing Redo Sequence",
    "Quantum Restoration Reboot",
    "Time Paradox Present - Loop Continues",
    "System.error - Reconstructing Temporal Coordinates"
];


currentMessage = messages[irandom(array_length_1d(messages) - 1)];


currentText = "";
letterIndex = 0;
maxLetters = string_length(currentMessage);

// Dot animation
dots = "";
dotStep = 0; 
textTimer = 0;
textSpeed = 2; 
dotTimer = 0;
dotSpeed = 15; 
transitionTimer = -1;
transitionDelay = room_speed * 5; 


font = fnt_titlescreen3; 
color = c_white; 
