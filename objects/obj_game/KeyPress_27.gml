if (room == rm_game2) {
    global.paused = true;  
    room_goto(rm_paused);  
}

if (room == rm_titlescreen2) {
    room_goto(rm_titlescreen);  
}

if (room == rm_settings) {
    room_goto(rm_titlescreen2);
}

if (room == rm_credits) {
    room_goto(rm_titlescreen2);
}

if (room == rm_help) {
    room_goto(rm_titlescreen2);
}