function Dialogue() constructor {
    _dialogs = [];
    
    add = function (_sprite, _message, _choices = undefined) {
        var dialogueObject = {
            sprite: _sprite,
            message: _message,
            choices: _choices  
        };
        array_push(_dialogs, dialogueObject);
    };
    
    pop = function() {
        var _t = array_first(_dialogs);
        array_delete(_dialogs, 0, 1);
        
        return _t;
    };

    count = function() {
        return array_length(_dialogs);
    };
	
}