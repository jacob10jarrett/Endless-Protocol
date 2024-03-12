timer++;

if (timer >= typeSpeed && charIndex < string_length(fullMessage)) {
    var nextChar = string_char_at(fullMessage, charIndex + 1);
    charIndex++;
    timer = 0;

    // Directly check if nextChar is a space or if adding it exceeds maxLineWidth
    if (nextChar == " " || string_width(message + nextChar) > maxLineWidth) {
        // Add a line break if it's not the first character and the line exceeds maxLineWidth
        if (string_width(message + nextChar) > maxLineWidth && message != "") {
            message += "\n";
        }
    }
    message += nextChar; // Add nextChar after potentially adding a newline
}
