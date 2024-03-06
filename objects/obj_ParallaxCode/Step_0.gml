if (irandom_range(1, 100) <= 10) { 
    for (var i = 0; i < ds_list_size(binary_strings); i++) {
        var current_string = ds_list_find_value(binary_strings, i);
        // Create scrolling effect by cycling characters
        var new_string = string_delete(current_string, 1, 1) + string(irandom(1));
        ds_list_replace(binary_strings, i, new_string);
    }
}
