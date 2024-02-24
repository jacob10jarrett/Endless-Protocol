mission_texts[0] = "Your mission, should you choose to accept it...";
mission_texts[1] = "This mission requires your expertise in close combat...";
mission_texts[2] = "Your task is to infiltrate and restore the facility...";

full_text = mission_texts[irandom(array_length_1d(mission_texts) -1)];

display_length = 3; 
type_speed = 1; 
type_timer = 10; 
is_typing = true; 


current_page = 0; 
chars_per_page = 2; 

with (obj_button_next) {
    visible = false;
}