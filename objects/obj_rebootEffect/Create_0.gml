// List of messages
messages = [
    "System.error - Protocol Reset Initiated",
    "System.error - Realigning Timeline",
    "Commencing Redo Sequence",
    "Quantum Restoration Reboot",
    "Time Paradox Present - Loop Continues",
    "System.error - Reconstructing Temporal Coordinates"
];

// Choose a random message
currentMessage = messages[irandom(array_length_1d(messages) - 1)];

// Typewriter effect variables
currentText = "";
letterIndex = 0;
maxLetters = string_length(currentMessage);

// Dot animation
dots = "";
dotStep = 0; // Tracks the current dot animation step (0 to 3)

// Timing
textTimer = 0;
textSpeed = 2; // How fast the text appears (lower is faster)
dotTimer = 0;
dotSpeed = 15; // Speed of dot animation
transitionTimer = -1; // Starts when the full message is displayed
transitionDelay = room_speed * 5; // 3 seconds delay

// Drawing
font = fnt_titlescreen3; 
color = c_white; 
