// Inherit the parent event
event_inherited();

global.button_next_pressed = false;

function dialog_add_and_check(sprite, message) {
    // Check if the message is the end marker
    if (message == "N/A") {
        global.allDialoguesExhausted = true;
    }
    
    // Call the original dialog.add function
    dialog.add(sprite, message);
}


dialog_add_and_check(spr_character_blue, "Agent, do you copy?");
//Loud and clear. I'm at the entrance of the facility.
dialog_add_and_check(spr_character_blue, "Listen carefully. The facility's core has been unstable since the breach.");
dialog_add_and_check(spr_character_blue, "We need you to initiate the restoration sequence, but it's not going to be easy.");
//I understand the risks.
dialog_add_and_check(spr_character_blue, "Once you're in, you'll have twenty minutes to restore power and reboot the system.");
dialog_add_and_check(spr_character_blue, "Any longer and the core will go critical.");
//Twenty minutes... Got it.
dialog_add_and_check(spr_character_blue, "N/A");

//Copy that. Heading in. See you on the other side.
