// Increment timer
timer++;

// Check if it's time to add the next character to message
if (timer >= typeSpeed && charIndex < string_length(selectedCongratMessage)) {
    charIndex++; // Move to the next character
    message = string_copy(selectedCongratMessage, 1, charIndex); 
}
