// Deselect the current button
if (instance_exists(button_instances[selected_index])) {
    button_instances[selected_index].is_selected = false;
}

// Move to the previous button, ensuring we loop back to the last button if at the start
selected_index = (selected_index - 1 + array_length_1d(button_instances)) % array_length_1d(button_instances);

// Select the new button
if (instance_exists(button_instances[selected_index])) {
    button_instances[selected_index].is_selected = true;
}
