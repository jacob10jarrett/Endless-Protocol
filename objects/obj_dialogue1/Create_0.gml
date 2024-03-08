// Inherit the parent event
event_inherited();

//global.button_next_pressed = false;

// Define the dialog_add_and_check function
function dialog_add_and_check(sprite, message) {   
    // Call the original dialog.add function
    dialog.add(sprite, message);
}

// Add dialogues
dialog_add_and_check(spr_character_blue, "Agent, you've been assigned a critical mission.");
dialog_add_and_check(spr_character_blue, "An experiment has gone wrong, leaving the facility's core unstable since the breach.");
dialog_add_and_check(spr_character_blue, "You need to initiate the restoration sequence to stabilize the core.");
dialog_add_and_check(spr_character_blue, "But be warned, once you've started the protocol, the challenge will escalate significantly.");
dialog_add_and_check(spr_character_blue, "You'll have to survive twenty minutes in order to reboot the system's mainframe.");
dialog_add_and_check(spr_character_blue, "However, the experiment's failure may have created anomalies in the fabric of space itself.");
dialog_add_and_check(spr_character_blue, "Once you enter, the path behind you may disappear. There's a chance you won't be able to return.");
dialog_add_and_check(spr_character_blue, "We're all counting on you. Good luck, Agent.");


//global.allDialoguesExhausted = true; 

// Assuming this code is in an appropriate place where x and y are defined, such as in an object's Create event
//if (global.allDialoguesExhausted) {
   // if (instance_exists(obj_button_dialogue_next)) {
     //   instance_destroy(obj_button_dialogue_next);
   // }

    //if (!instance_exists(obj_button_dialogue_start)) {
    //    instance_create_layer(x, y, "Instances_5", obj_button_dialogue_start);
    //}
//}
