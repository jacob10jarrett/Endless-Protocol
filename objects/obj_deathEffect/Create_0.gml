messages = [
    "Protocol Reset Initiated",
    "Temporal Anomaly Detected - Realigning Timeline",
    "Experiment Phase Incomplete - Commencing Redo Sequence",
    "Quantum Restoration in Progress",
    "Time Paradox Resolved - Loop Continues",
    "Reconstructing Temporal Coordinates"
];

currentMessage = messages[irandom(array_length_1d(messages) - 1)];

currentText = "";
letterIndex = 0;
maxLetters = string_length(currentMessage);

// Dot animation
dots = "";
dotStep = 0; 

// Timing
textTimer = 0;
textSpeed = 2; 
dotTimer = 0;
dotSpeed = 15; 
transitionTimer = -1; 
transitionDelay = room_speed * 5;

// Drawing
font = fnt_titlescreen3; 
color = c_white; 
