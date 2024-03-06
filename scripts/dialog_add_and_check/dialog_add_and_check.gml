function dialog_add_and_check(sprite, message, choices = undefined) {
    if (message == "N/A") {
        global.allDialoguesExhausted = true;
        return;
    }
    var dialogueObject = {
        sprite: sprite,
        message: message,
        choices: choices
    };
    dialog.add(dialogueObject.sprite, dialogueObject.message, dialogueObject.choices);
}
