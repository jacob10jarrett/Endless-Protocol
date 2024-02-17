// Deselect the current button
    if (instance_exists(button_instances[selected_index])) {
        button_instances[selected_index].is_selected = false;
    }

    // Move to the next button, ensuring we loop back to the first button if at the end
    selected_index = (selected_index + 1) % array_length_1d(button_instances);

    // Select the new button
    if (instance_exists(button_instances[selected_index])) {
        button_instances[selected_index].is_selected = true;
    }



